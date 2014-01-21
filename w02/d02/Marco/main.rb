
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

  client_pets = []
  end

  def name 
    return @name
  end

  def age
    return @age
  end

  def client_pets(pets)
    client_pets.push(pets)
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

  else 
    puts "That is not a valid option! Please try again."
    response = gets.chomp.downcase
  end

end



# test_shelter = Shelter.new("Lost Pets 4 Eww")
# test_animal = Animal.new("Jack", "dog")
# test_animal2 = Animal.new("Cloee", "cat")

# test_shelter.shelter_animals.push(test_animal)


