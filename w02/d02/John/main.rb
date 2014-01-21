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