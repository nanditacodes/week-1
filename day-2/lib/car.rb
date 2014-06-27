module Movable
  def move how_much=5
    @started = true;
    @position = @position + how_much
  end
end

class Car

  include Movable
  attr_accessor  :started, :position

  def initialize
    @started = false
    @position = 0
  end



  def print_status
    current_status = {}
    current_status[:started] = started
    current_status[:position] = position
    current_status
  end


end

car = Car.new
car.move 20
puts car.print_status
