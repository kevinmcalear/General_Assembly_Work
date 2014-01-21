# require_relative "models/shelter"
# require_relative "models/client"
# require_relative "models/animal"

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

  def add_animal
    puts "What is the animal's name?"
    name = gets.chomp
    puts "What is the animal's species?"
    species = gets.chomp
    animal = Animal.new name, species
    @animals_list << animal
  end

  def add_client
    puts "What is the client's name?"
    name = gets.chomp
    puts "What is the client's age?"
    age = gets.chomp
    client = Client.new name, age
    @clients_list << client
  end

  def update_animals_list(animal)
    @animals_list << animal
  end

  def update_clients_list(client)
    @clients_list << client
  end

  def list_animals
    #print the list of shelter's animals
    @animals_list.each {|animal| puts animal.name}
  end

  def list_clients
    #print the list of shelter's clients
    @clients_list.each {|client| puts client.name}
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
  puts "5) Quit"
  menu_choice = gets.chomp

  case menu_choice
  when '1'
    shelter.add_animal
  when '2'
    shelter.add_client
  when '3'
    shelter.list_animals
  when '4'
    shelter.list_clients
  end
  puts
  return menu_choice

end


#initialize some seed data
shelter1 = Shelter.new("Happy Pets")
client1 = Client.new("Jeff", 33)
animal1 = Animal.new("Buddy", 3)

shelter1.update_animals_list(animal1)
shelter1.update_clients_list(client1)





while menu(shelter1) != "5"
end










