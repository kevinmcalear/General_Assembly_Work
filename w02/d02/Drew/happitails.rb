### Define Animal Class ###

class Animal
  def initialize (name, species)
    @name = name
    @species = species
  end

  def name
    return @name
  end

  def species
    return @species
  end

  def toys 
    @toys = toys
  end
  def toys
    return @toys
  end

end

# animal = Animal.new("rosie", "dog")

# puts animal.name 

class Client 
  def initialize(name, age)
    @name = name
    @age = age
  end

  def name
    return @name
  end

  def age
    return @age
  end

  def pets
    @pets = pets
  end
  def pets 
    return @pets
  end

end

class Shelter
  def initialize(name)
    @name = name
    #animal hash to store data
    @animals = {}
    #clients hash to store data
    @clients = {}
  end

  def name
    return @name
  end

end

