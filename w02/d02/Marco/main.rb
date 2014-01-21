
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
    return @shelter_animals
  end

  def add_animal_to_shelter
    puts "What is this animal's name?"
      name = gets.chomp.downcase

    puts "What is this animal's species?"
      species = gets.chomp.downcase

    animal = Animal.new(name, species)
    
    self.shelter_animals().push(animal)

    puts "#{name.capitalize} the #{species} has been added!"
  end

  def add_client_to_shelter
    puts "What is the new client's name?"
      name = gets.chomp.downcase

    puts "What is the new client's age?"
      age = gets.chomp.to_i

    client = Client.new(name, age)

    self.shelter_clients().push(client)
    
    puts "#{name.capitalize}, aged #{age} years has been added!."
  end


end

new_shelter = Shelter.new("HappiTails")

def menu
  puts "-----------------------------"
  puts "Animal Shelter Management App"
  puts "1. Create a new (A)nimal"
  puts "2. Create a new (C)lient"
  puts "3. Create a new (S)helter"
end

menu

response = gets.chomp.downcase

until response == "q"

  case response
  when "a"
    new_shelter.add_animal_to_shelter
    menu 

    response = gets.chomp.downcase

  when "c"
    new_shelter.add_client_to_shelter
    menu
    response = gets.chomp.downcase


  when "s"
    puts "s"
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


