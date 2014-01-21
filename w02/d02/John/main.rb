# require_relative "models/shelter"
# require_relative "models/client"
# require_relative "models/animal"
require 'pry'

class Shelter
  def initialize(name)
    #initialize name
    @name = name

    #initialize empty animals list and clients list
    @animals_list = []
    @clients_list = []
  end

  def name
    return @name
  end

  def animals_list
    return @animals_list
  end

  def clients_list
    return @clients_list
  end

  def add_animal
    puts "What is the animal's name?"
    name = gets.chomp
    puts "What is the animal's species?"
    species = gets.chomp
    animal = Animal.new name, species
    self.add_to_animals_list(animal)
  end

  def add_client
    puts "What is the client's name?"
    name = gets.chomp
    puts "What is the client's age?"
    age = gets.chomp
    client = Client.new name, age
    self.add_to_clients_list(client)
  end

  def add_to_animals_list(animal)
    self.animals_list << animal
  end

  def add_to_clients_list(client)
    self.clients_list << client
  end

  def print_animals_list
    #print the list of shelter's animals
    a = self.animals_list.map {|animal| animal.name}
    puts "{#{a.join(", ")}}"
  end

  def print_clients_list
    #print the list of shelter's clients
    a = self.clients_list.map {|client| client.name}
    return "{#{a.join(", ")}}"
  end

  def get_which_client
    puts "what is the name of the client?"
    puts puts self.print_clients_list
    client_name = gets.chomp
    return self.clients_list.find {|client| client.name == client_name}
  end

  def get_which_animal
    puts "Please select which animal:"
    self.print_animals_list
    animal_name = gets.chomp
    return self.animals_list.find {|anim| anim.name == animal_name}
  end

  def facilitate_adoption
    # get client
    print "For adopting, "
    client = self.get_which_client

    # get animal
    animal = self.get_which_animal

    # add animal to client's pets
    client.adopt_animal(animal)
    puts "#{client.name}'s pets now are: #{client.print_pets_list}"

    # remove animal from shelter's list
    self.animals_list.delete(animal)

  end

  def facilitate_return
    #get client
    print "For returning, "
    client = self.get_which_client

    #get pet
    animal = client.get_which_pet
    
    #remove animal from client's pet list
    client.return_pet(animal)
    
    puts "#{client.name}'s pets now are #{client.print_pets_list}"

    #add animal to shelter's list
    self.animals_list << animal

  end
  
end

class Client
  def initialize(name, age)
    #initialize name, age
    @name = name
    @age = age

    #initialize empty pets array
    @pets = []
  end

  def name
    return @name
  end

  def age
    return @age
  end

  def pets
    return @pets
  end

  def adopt_animal(animal)
    self.pets << animal
  end

  def return_pet(pet)
    self.pets.delete(pet)
  end

  def print_pets_list
    a = self.pets.map {|pet| pet.name}
    return "{#{a.join(", ")}}"
  end

  def get_which_pet
    puts "Please select which pet:"
    puts self.print_pets_list
    animal_name = gets.chomp
    return self.pets.find {|anim| anim.name == animal_name}
  end
  
end


class Animal
  def initialize(name, species)
    #initialize name, species
    @name = name
    @species = species

    #initialize empty toys array
    @toys = []
  end

  def name
    return @name
  end

  def species
    return @species
  end

  def toys
    return @toys
  end

end


def create_shelter
  puts "What is the shelter's name?"
  shelter = Shelter.new gets.chomp
  return shelter
end

def menu(shelter)
  puts "Welcome! Please choose an option:"
  puts "1) Create an animal"
  puts "2) Create a client"
  puts "3) List all animals"
  puts "4) List all clients"
  puts "5) Adopt a pet"
  puts "6) Return a pet"
  puts "7) Quit"
  menu_choice = gets.chomp

  case menu_choice
  when '1'
    shelter.add_animal
  when '2'
    shelter.add_client
  when '3'
    shelter.print_animals_list
  when '4'
    puts shelter.print_clients_list
  when '5'
    shelter.facilitate_adoption
  when '6'
    shelter.facilitate_return
  end
  puts
  return menu_choice

end


#initialize some seed data
shelter1 = Shelter.new("Happy Pets")
client1 = Client.new("Jeff", 33)
animal1 = Animal.new("Buddy", 3)

shelter1.add_to_animals_list(animal1)
shelter1.add_to_clients_list(client1)





while menu(shelter1) != "7"
end










