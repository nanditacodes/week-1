
require 'colorize' #gem

class Band

  attr_accessor :band_name, :perf_time, :slot
  def initialize(band_name="", options={})
    @band_name, @perf_time, @slot = band_name, options[:perf_time], options[:slot]
  end

  def print_details iter
    print  "#{iter}. #{self.slot == :headliner ? "HEADLINER:".red: ""}" + self.band_name + "====>" +  self.perf_time.to_s + "\n"
  end


end


band1 = Band.new "band1", :perf_time => 30, :slot => :none
band2 = Band.new "band2", :perf_time => 30, :slot => :none
band3 = Band.new "band3", :perf_time => 30, :slot => :none
band4 = Band.new "band4", :perf_time => 30, :slot => :none
@bands = [band1, band2, band3, band4]
@list_of_available_bands = @bands.map(&:band_name)

#array of band artists that user custom built
@my_concert = []

def print_menu
  puts ""
  puts "Sounds of Summer concert".cyan.underline
  puts "1. Display available bands"
  puts "2. Build your concert"
  puts "3. Add a headliner to your concert"
  puts "4. Play"
  puts "5. Quit"
end

def print_continue_message
  puts "\nPress any key to continue...".red
  gets
end

def display_band my_list=nil
  puts "Available Bands:".red
  if my_list
    puts my_list.join("\n").light_green
  else
    puts @bands.map(&:band_name).join("\n").light_green
  end
end

def play
  puts "YOUR CONCERT:".light_magenta
  iter = 0
  @my_concert.each do |concert|
    concert.send :print_details, iter+1
    iter += 1
  end
end


def build_your_concert
  display_band

  puts "Choose your first opening act:"
  name = gets.chomp.strip
  if  !@list_of_available_bands.include?(name)
    puts "#{name} not in currently available list. Try again!!".red
    return
  end
  puts "Time alotted to #{name}:"
  time = gets.chomp.strip.to_i

  concert1 = Band.new(name, :perf_time => time, :slot => :opening)


  puts "Choose your second opening act:"
  name = gets.chomp.strip
  if  !@list_of_available_bands.include?(name)
    puts "#{name} not in currently available list. Try again!!".red
    return
  end
  puts "Time alotted to #{name}:"
  time = gets.chomp.strip.to_i

  concert2 = Band.new(name, :perf_time => time, :slot => :opening)

  @my_concert << concert1
  @my_concert << concert2

  puts "Please wait while we build your concert..."
  sleep(1)

  @my_concert
end


def add_headliner
  # Find the available bands
  list_bands_already_taken = @my_concert.map(&:band_name)


  current_available = @list_of_available_bands - list_bands_already_taken

  display_band current_available


  puts "Enter the band name:"
  name = gets.chomp.strip
  if  !current_available.include?(name)
    puts "#{name} not in currently available list. Try again!!".red
    return
  end
  puts "Enter the performance time:"
  time = gets.chomp.strip


  new_entry = Band.new(name,:perf_time => time.to_i,:slot => :headliner)
  @my_concert << new_entry
end

choice = 0
until choice==5
  print_menu
  choice = gets.chomp.strip.to_i
  case choice
    when 1 then display_band
    when 2 then build_your_concert
    when 3 then add_headliner
    when 4 then play
    print_continue_message
  end
end
