###HappiTails

require_relative("main")
#################
### Animal Class
#################
class Animal
  def initialize(name, species, toys)
    @name = name
    @species = species
    @toys = toys
  end

  def name
    return @name
  end

  def age
    return @age
  end

  def toys
    return @toys
  end

end

#################
### Client Class
#################

class Client
  def initialize(name, age, pets)
    @name = name
    @age = age
    @pets = pets
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

#################
### Shelter Class
#################

class Shelter
  def initialize(name)
    @name = name
    @animals = []
    @clients = []
  end

  def name
    return @name
  end

  def animals
    return @animals
  end

  def clients
    return @clients
  end

  def give_back
    puts "What is your name?"
    name = gets.chomp
    puts "What is your age?"
    age = gets.chomp.to_i
    puts "Which pet do you want to return?"
    pets = gets.chomp
    old_client = Client.new(name, age, pets)
    self.clients().delete(old_client)
  end
#Menu option 1
  def create_animal
    puts "What is the animal's name?"
    name = gets.chomp
    puts "What is the animal's species?"
    species = gets.chomp
    puts "What toys does the animal have?"
    toys = gets.chomp.split(",")
    new_animal = Animal.new(name, species, toys)
    self.animals().push(new_animal)
  end
#Menu option 2
  def create_client
    puts "What is your name?"
    name = gets.chomp
    puts "What is your age?"
    age = gets.chomp.to_i
    puts "Which pet do you want to adopt?"
    pets = gets.chomp
    new_client = Client.new(name, age, pets)
    self.clients().push(new_client)
  end
end

#################
### Main Program
#################
#create a new shelter
shelter = Shelter.new("Best Animal Shelter")


menu_choice = menu

while menu_choice != "4"
  case menu_choice
  when "1"
    shelter.create_animal
  when "2"
    shelter.create_client
  when "3"
    puts "What is your shelter name?"
    name = gets.chomp
    new_shelter = Shelter.new(name)
    puts "What animals are there?"
    animals = gets.chomp
    puts "Who are your clients?"
    clients = gets.chomp
    new_shelter.animals = animals
    new_shelter.clients = clients
  else
    puts "That wasn't an option"
  end
  puts "Press enter to continue"
  gets
  menu_choice = menu
end