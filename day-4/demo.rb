class Dog      #class is a blueprint
  attr_accessor :name
  attr_writer :color
  attr_reader :legs, :arms

  @@gender = ["girls", "boys"]
  #class variable
  @@current_animals = []


  def self.gender
    #class method setter?
    @@gender
  end

  def self.gender=(array=[])
    #class method getter?
    @@gender = array
  end

  def self.current_animals
    @@current_animals
  end

  def Dog.register_dog(dog)
    @@current_animals << dog
  end

  def Dog.create_with_attributes(bark, color)
    dog = self.new(bark)
    dog.color = color
    return dog
  end

  def initialize(bark, legs=4, arms=0)
    @bark = bark
    #instance variable
    @legs = legs
    @arms = arms
    Dog.register_dog(self)

    puts "Another Mutt cataloged!
    "
  end

  attr_accessor :bark

  def bark=(bark)
    @bark = bark
  end

  def bark
    @bark
  end

  def color
    "My hair color is #{@color}."
  end

end
