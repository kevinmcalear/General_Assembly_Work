
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
  end

  def add_client_to_shelter(client)
    self.shelter_clients().push(client)
    return shelter_clients(client)
  end


end

# test_shelter = Shelter.new("Lost Pets 4 Eww")
# test_animal = Animal.new("Jack", "dog")
# test_animal2 = Animal.new("Cloee", "cat")

# test_shelter.shelter_animals.push(test_animal)

puts @shelter_animals
