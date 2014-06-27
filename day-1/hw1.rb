class MyClass
  def runThisMethod(counter)
    puts "I am in this method for the #{counter}th time"
  end
end

my_class = MyClass.new

20.times  do |counter|
  counter = counter + 1
  my_class.runThisMethod(counter)
end
