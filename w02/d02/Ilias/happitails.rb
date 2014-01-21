class Animal
  
  def initialize(name, species)
    @name = name
    @species = species.to_sym
    @animal_toys = []
  end

  def add_toy=(toy)
    @animal_toys << toy
  end

end


class Client

  def initialize(name, age)
    @name = name
    @age = age.to_i
    @pets = []
  end

  def name()
    return @name
  end

  def age()
    return @age
  end

  def adopt=(pet)
    pets << pet
  end

  def show_pets()
    return @pets
  end

  def to_s
    "This client, #{self.name}, is #{self.age} years old and has the following pets: #{self.pets}"
  end

end


class Shelter

  def initialize(name)
    @name = name
    @shelter_clients = []
    @shelter_animals = []
  end

  def name
    return @name
  end

  def add_client(client)
    @client = client
    @shelter_clients << @client
  end

  def show_clients
    return @shelter_clients
  end

  def add_animal(animal)
    @animal = animal
    @shelter_animals << @animal
  end

  def show_pets
    return @shelter_animals
  end

  def adopt(client, pet)
    @adopter = @shelter_clients.select { |name| name.eql?(client) }
    @pet = @shelter_animals.select { |name| name.eql?(pet) }
    puts "#{@adopter} just adopted #{@pet}!"
    return [@adopter, @pet]
  end

  def to_s
    "This shelter is named #{self.name} with clients: #{self.show_clients}"
  end

end

# -------------------------------------

shelter = Shelter.new("GA")
human1 = Client.new("Ilias", "23")
pet1 = Animal.new("Simba", "cat")


shelter.add_client(human1)
shelter.show_clients
shelter.add_animal(pet1)
shelter.adopt(human1, pet1)




puts shelter
