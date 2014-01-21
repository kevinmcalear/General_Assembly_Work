
require 'pry'

class Animal
  def initialize(name, species)
    @name = name
    @species = species

    toys = []
  end

  def name 
    return @name
  end

  def species
    return @species
  end

  def add_toy(toy)
    toys.push(toy)
  end


end


class Client
  def initialize(name, age)
    @name = name
    @age = age

    @client_pets = []
  end

  def name 
    return @name
  end

  def age
    return @age
  end

  def add_pet(pets)
    @client_pets.push(pets)
  end

  def list_pets
    @client_pets
  end


end

class Shelter
  def initialize(name)
    @name = name

    @shelter_animals = []
    @shelter_clients = []
  end

  def name 
    return @name
  end

  def shelter_animals
    return @shelter_animals
  end

  def shelter_clients
    return @shelter_clients
  end

  def add_animal_to_shelter
    puts "What is this animal's name?"
      name = gets.chomp.downcase

    puts "What is this animal's species?"
      species = gets.chomp.downcase

    animal = Animal.new(name, species)
    
    self.shelter_animals().push(animal)
    puts "-----------------------------"
    puts "#{name.capitalize} the #{species} has been added!"
  end

  def add_client_to_shelter
    puts "What is the new client's name?"
      name = gets.chomp.downcase

    puts "What is the new client's age?"
      age = gets.chomp.to_i

    client = Client.new(name, age)

    self.shelter_clients().push(client)
    puts "-----------------------------"
    puts "#{name.capitalize}, aged #{age} years has been added!."
  end

  def adopt_animal
    puts "Please enter name of animal to be adopted."
    animal_name = gets.chomp.downcase

      # binding.pry

    puts "Please enter the species of animal to be adopted."
    animal_species = gets.chomp.downcase

    pet_finder = self.shelter_animals().find do |pet|
      pet.name == animal_name
      pet.species == animal_species
    end

    animal_index = @shelter_animals.index(pet_finder)

    adopted_animal = pet_finder

    self.shelter_animals().delete_at(animal_index)

      # puts @shelter_animals

    puts "Please enter name of client"
    client_name = gets.chomp.downcase

    puts "Please enter age of client"
    client_age = gets.chomp.to_i

    client_finder = self.shelter_clients().find do |adopter|
      adopter.name == client_name
      adopter.age == client_age
    end

    found_client = client_finder

    #binding.pry

    found_client.add_pet(adopted_animal)

      # client_index = @shelter_clients.index(client_finder)

      # self.shelter_clients().push(pet_finder)
  end

  def surrender_animal

  end


end

new_shelter = Shelter.new("HappiTails")

def menu
  puts "-----------------------------"
  puts "Animal Shelter Management App"
  puts "(1). New Animal"
  puts "(2). New Client"
  puts "(3). New Shelter"
  puts "(4). Display all Animals"
  puts "(5). Display all Clients"
  puts "(6). Client/Animal Adoption"
  puts "(7). Client/Animal Surrender"
  puts "(Q). to Quit"
end

menu

response = gets.chomp.downcase

until response == "q"

  case response
  when "1"
    new_shelter.add_animal_to_shelter
    menu 

    response = gets.chomp.downcase

  when "2"
    new_shelter.add_client_to_shelter
    menu
    response = gets.chomp.downcase


  when "3"
    puts "What is the name of this shelter?"

    name = gets.chomp.downcase

    user_shelter = Shelter.new(name)
    puts "A new shelter named #{user_shelter.name.capitalize} has been created!"
    menu
    response = gets.chomp.downcase

  when "4"
    counter = 1
    new_shelter.shelter_animals.each do |animal|
      puts "#{counter}. #{animal.name.capitalize} the #{animal.species}"
      counter += 1
    end

    menu
    response = gets.chomp.downcase

  when "5"
    counter = 1
    new_shelter.shelter_clients.each do |client|
      puts "#{counter}. #{client.name.capitalize} - #{client.age} years old"
      counter += 1
    end

    menu
    response = gets.chomp.downcase

  when "6"
    new_shelter.adopt_animal

    menu
    response = gets.chomp.downcase

  when "7"

  else 
    puts "That is not a valid option! Please try again."
    response = gets.chomp.downcase
  end

end



# test_shelter = Shelter.new("Lost Pets 4 Eww")
# test_animal = Animal.new("Jack", "dog")
# test_animal2 = Animal.new("Cloee", "cat")

# test_shelter.shelter_animals.push(test_animal)


