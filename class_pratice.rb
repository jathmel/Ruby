class Cat

  attr_accessor :age, :location

  attr_reader :name


  def initialize (name, age, location)
    @name = name
    @age = age
    @location = location
  end
  #other method
  def speak
    puts "Meow"
  end

  def age_on_year
    #works
    @age = age + 1
    #doesn't works
    #age = age + 1
    #works
    #self.age = age + 1
  end
end

class Asteriod

  def initialize(x_coord, y_coord, velocity)
    # ...
  end

  def self.random_velocity(max_speed)
    speed = max_speed * random_velocity
    x_dir, y_dir = rand * [1, -1].sample, rand * [1, -1].sample
  end
end
