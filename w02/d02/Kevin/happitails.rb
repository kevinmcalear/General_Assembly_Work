class Animal
  def initialize(name, species)
    @name = name
    @species = species
    @toys = []
  end
end

class Client
  def intitialize(name, age)
    @name = name
    @age = age
    @pets = []
  end
end

class Shelter
  def intitialize(name)
    @name = name
    @animals = []
    @clients = []
  end
end
