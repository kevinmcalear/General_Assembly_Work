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

  def to_s
    return name
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

  def to_s
    return name
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

  def to_s
    return name
  end
end
