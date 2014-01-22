

# #HappiTails

# ###Prompt

# - You are the manager at HappiTails animal shelter. You need to manage your shelter by storing and manipulating information about clients and animals.

# ###Specification:

# #####Object Specs:
# - Animal:
#   - An animal should have a name.
#   - An animal should have a species.
#   - An animal can have multiple toys, but doesn't start with any.

class Animal
  def initialize(name, species)
    @name = name
    @species = species
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
  def add_toy(toy)
    self.toys << toy
  end
end


# - Client:
#   - A client should have a name.
#   - A client should have an age.
#   - A client can have multiple pets (animals), but it doesn't start with any.

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
  def pets
    return @pets
  end
  def add_pet(pet)
    self.pets << pet
  end
  def remove_pet(animal_name)
    animal_to_remove = self.pets.find do |animal|
      animal.name == animal_name
    end
    self.pets.delete(animal_to_remove) 
  end
end


# - Shelter:
#   - A shelter should have a name
#   - A shelter can have multiple animals, but it doesn't start with any.
#   - A shelter can have multiple clients, but it doesn't start with any.
#   - A shelter should be able to display all of its clients.
#   - A shelter should be able to display all of its animals.
#   - A shelter should be able to facilitate an adoption (one of its clients adopting one of the animals from shelter)
#   - A shelter should be able to facilitate a return (one of its clients returning his/her pet to the shelter)

class Shelter
  def initialize()
    @animals = []
    @clients = []
  end
  def animals
    return @animals
  end
  def add_animal
    puts "What's is the animal name?"
    animal_name = gets.chomp
    puts "What is the animal species?"
    animal_species = gets.chomp
    animal = Animal.new(animal_name, animal_species)
    self.animals << animal
  end
  def add_client
    puts "What is the client name?"
    client_name = gets.chomp
    puts "What is the client age?"
    client_age = gets.chomp.to_i
    client = Client.new(client_name, client_age)
    self.clients << client 
  end
  def clients
    return @clients
  end
  def remove_animal(animal_name)
    animal_to_remove = self.animals.find do |animal|
      animal.name == animal_name
    end
    self.animals.delete(animal_to_remove) 
  end
end


# #####Commit 1
# - Define the animal, client and shelter classes according to the specs. Each class should have the appropriate attributes and initialize method.
# - Test these out with pry to make sure you can create the objects and that they do what you think the should do. Check the methods that you wrote too!

