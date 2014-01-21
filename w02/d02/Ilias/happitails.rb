require 'pry'
require 'ap'

##Methods##
class Animal
  def initialize(name, species)
    animal_list = []
    @name = name
    @species = species
    @toys = []
  end

  def add_toy=(toy)
    @toy << toy
  end
end


class Client
  def initialize(name, age)
    @name = name
    @age = age
    @pets = []
  end

  def name()
    return @name
  end

  def age()
    return @age
  end

  def adopt(pet)
    @pet = pet
    pets << @pet
  end

  def show_pets()
    return @pets
  end

  def to_s
    "This client, #{self.name}, is #{self.age} years old and has the following pets: #{self.show_pets}"
  end
end


class Shelter
  def initialize(name)
    @name = name
    @shelter_clients = []
    @shelter_animals = []
  end

  def name()
    return @name
  end

  def add_client()
    puts "What is the client's name?"
    name = gets.chomp.capitalize
    puts "How old is #{name}?"
    age = gets.chomp.to_i
    client = Client.new(name, age)
    @shelter_clients << {:name => name, :age => age}
    puts "Good job! We've registered #{name} as a client."
  end

  def add_animal()
    puts "What is your animal's name?"
    name = gets.chomp.capitalize
    puts "What type of animal is #{name}?"
    species = gets.chomp.downcase
    animal = Animal.new(name, species)
    @shelter_animals << {:name =>name, :species => species}
    puts "Nice! we've registered #{name} the #{species}"
  end

  def show_clients()
    puts "Clients currently in #{self.name} shelter are:"
    @shelter_clients.each { |client| puts "#{client[:name]}" }
  end

  def show_animals()
    puts "Animals currently in #{self.name} shelter are:"
    @shelter_animals.each { |animal| puts "#{animal[:name]} the #{animal[:species]}" }
  end

  def to_s()
    "Welcome to #{self.name} shelter!"
  end
end

#-------------------------------------#

##Start##
puts "Hi, let's start by naming your shelter:"
user_input = gets.chomp.upcase
shelter = Shelter.new(user_input)

while user_input != "Q"
puts `clear`
puts "#{shelter} \n"
puts "Please choose from the following options:"
puts "create an animal (CA), create a client (CC), create a shelter(CS)\n"
puts "display animals (DA), display clients (DC)"
puts "or (Q)uit"
user_input = gets.chomp.upcase

  case user_input
  when "CA"
    puts `clear`
    shelter.add_animal
  when "CC"
    puts `clear`
    shelter.add_client
  when "CS"
    puts `clear`
    puts "What would you like your new shelter to be called?"
    user_input = gets.chomp.upcase
    new_shelter = Shelter.new(user_input)
    puts "Lovely! We've created #{shelter} shelter"
  when "DA"
    shelter.show_animals
    puts "Press anything to go back or (Q)uit"
    user_input = gets.chomp.upcase
  when "DC"
    shelter.show_clients
    puts "Press anything to go back or (Q)uit"
    user_input = gets.chomp.upcase
  end
end
exit

#binding.pry

