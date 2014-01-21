class Shelter
  def initialize(name, animals=[], clients=[])
    @name = name
    @animals = animals
    @clients = clients
  end

  def get_name
    return @name
  end

  def get_animals
    return @animals
  end

  def get_clients
    return @clients
  end

  def adoption(animal_name, client_name)
    # finds and removes animal object from Shelter's array, popping it into a variable
    #puts self.get_clients.index(client_name).get_pets
    # self.get_clients[client_name].pets << self.get_animals[animal_name]
    # puts self.get_clients[client_name].pets
    # adds that variable to Client object's pet array
  end
end

class Client
  def initialize(name, age, pets=[])
    @name = name
    @age = age
    @pets = pets
  end

  def get_name
    return @name
  end

  def get_age
    return @age
  end

  def get_pets
    return @pets
  end

end

class Animal
  def initialize(name, species, toys=[])
    @name = name
    @species = species
    @toys = toys
  end

  def get_name
    return @name
  end

  def get_species
    return @species
  end

  def get_toys
    return @toys
  end
end

happitails = Shelter.new("Happitails", ["Miss Kitty", "Tuxedo Cat", "Henry Miller"], ["Valerie Brady"])
vb = Client.new("Valerie Brady", 59, ["Lucy Liu", "Bettina", "Jimmy", "Lily"])
miss_kitty = Animal.new("Miss Kitty", "cat", [])
tg = Animal.new("Tuxedo Cat", "cat", [])
henry = Animal.new("Henry Miller", "cat", [])
lucy = Animal.new("Lucy Liu", "cat", [])
jimmy = Animal.new("Jimmy", "cat", [])
lily = Animal.new("Lily", "cat", [])

puts happitails.adoption("Miss Kitty", "Valerie Brady")

