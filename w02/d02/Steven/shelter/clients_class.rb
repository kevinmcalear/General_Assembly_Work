# require_relative 'animal_class'
# require_relative 'shelter_class'
# require_relative 'main'


class Client
  def initialize(name, age)
    @name = name
    @age = age
    @pets = []
  end

  def name
    return @name
  end

  def age
    return @age
  end

  def add_animal
    puts "What is the animal's name?"
    name = gets.chomp
    puts "What is the animal's species?"
    species = gets.chomp
    animal = Animal.new(name, species)
    self.pets().push(animal)
  end

  def to_s
    puts "#{name} is #{age}"
  end
end


steve = Client.new("Steve", "30")
puts steve



