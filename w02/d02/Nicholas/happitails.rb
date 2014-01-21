# Happitails - Nicholas Bundy

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

end

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

end

  class Shelter

    def initialize(name)
      @name = name
      @animals = []
      @clients = []
    end

    def name
      return @name
    end

    def animals
      return @animals
    end

    def clients
      return @clients
    end

  end

rover = Animal.new("Rover", "dog")
puts rover.name
puts rover.species

john = Client.new("John", 40)
puts john.name
puts john.age

paws = Shelter.new("Paws4U")
puts paws.name


