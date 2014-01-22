###################
###### Shelter Class ##
###################

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

  # def to_s
  #   return name
  # end


  def adoption(animal_name, client_name)

    # finds animal object from Shelter's array and adds it to given client's pet array
    # how to find the client's pet array? 
    $happitails.get_clients.each do |client_object| 
      if client_object.get_name == client name
        puts client_object.get_pets
      end
    end
    # self.get_clients[client_name].pets << self.get_animals[animal_name]
    #puts self.get_clients[client_name].pets
    # adds that variable to Client object's pet array
  end
end

###################
####### Client Class ##
###################

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

  # def to_s
  #   return @name
  # end
end

###################
###### Animal Class ##
###################

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

  # def to_s
  #   return get_name
  # end
end
