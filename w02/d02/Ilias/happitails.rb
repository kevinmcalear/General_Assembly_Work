require 'pry'

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

  def self.all
    ObjectSpace.each_object(self).to_a
  end

  def initialize(name, age)
    @name = name.capitalize
    @age = age
    @pets = []
  end

  def name()
    return @name
  end

  def age()
    return @age
  end

  def add_pet(pet)
    @pet = pet
    @pets << @pet
  end

  def remove_pet(pet)
    @pet = pet
    @pets.delete(@pet)
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

  def return_clients()
    @shelter_clients
  end

  def return_animals()
    @shelter_animals
  end

  def add_client(name, age)
    name = Client.new(name, age)
    @shelter_clients << {:name => name, :age => age}
  end

  def add_animal(animal_name, species)
    @animal_name = Animal.new(animal_name, species)
    @shelter_animals << {:name =>animal_name, :species => species}
  end

  def show_clients()
    puts "Clients currently in #{self.name} shelter are:\n\n"
    @shelter_clients.each { |client| puts "#{client[:name]}" }
    puts ""
  end

  def show_animals()
    puts "Animals currently in #{self.name} shelter are:\n\n"
    @shelter_animals.each { |animal| puts "#{animal[:name]} the #{animal[:species]}" }
    puts ""
  end

  def adopt(pet)
    @pet = pet
    @shelter_animals.each do |entry|
      if entry[:name] == @pet
        @shelter_animals.each { |entry| entry.delete(@pet) }
      end
    end
  end

  def to_s()
    "Welcome to #{self.name} shelter!"
  end
end

#-------------------------------------#

##Initialize##
puts "Hi, let's start by naming your shelter:"
user_input = gets.chomp.upcase
shelter = Shelter.new(user_input)

##Seeding##
shelter.add_animal("Simba", "cat")
shelter.add_animal("Mupp", "cat")
shelter.add_animal("Hamlett", "dog")

shelter.add_client("Ilias", "23")
shelter.add_client("Scarlett", "27")
shelter.add_client("Tommy", "51")

##Menu##

while user_input != "Q"
puts `clear`
puts "#{shelter} \n"
puts "Please choose from the following options:"
puts "create an animal (CA), create a client (CC), create a shelter(CS)\n"
puts "display animals (DA), display clients (DC), facilitate an adoption (FA), return animal (RA)"
puts "or (Q)uit"
user_input = gets.chomp.upcase

  case user_input
  when "CA"
    puts `clear`
    puts "What is your animal's name?"
    name = gets.chomp.capitalize
    puts "What type of animal is #{name}?"
    species = gets.chomp.downcase
    shelter.add_animal(name, species)
    puts "Nice! we've registered #{name} the #{species}"

  when "CC"
    puts `clear`
    puts "What is the client's name?"
    name = gets.chomp.capitalize
    puts "How old is #{name}?"
    age = gets.chomp.to_i
    shelter.add_client(name, age)
    puts "Good job! We've registered #{name} as a client."

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

  when "FA"
    puts `clear`
    puts "Which pet shall we adopt?"
    shelter.show_animals
    pet_selection = gets.chomp.capitalize
    shelter.adopt(pet_selection)
    puts "Who is adopting #{pet_selection}?"
    shelter.show_clients
    client_selection = gets.chomp.capitalize
    Client.all.each do |client|
      if client.name == client_selection
        client.add_pet(pet_selection)
        shelter.adopt(pet_selection)
        puts  "#{client_selection} has adopted #{pet_selection}!"
        puts "Press anything to go back or (Q)uit"
        user_input = gets.chomp.upcase
      end
    end

  when "RA"
    puts `clear`
    puts "Who is making the return?"
    shelter.show_clients
    client_selection = gets.chomp.capitalize
    puts "Enter the name of the pet being returned:"
    pet_selection = gets.chomp.capitalize
    Client.all.each do |pet|
      if pet == pet_selection
        client.remove_pet(pet_selection)
      end
    end

    end
    
end
exit

binding.pry

