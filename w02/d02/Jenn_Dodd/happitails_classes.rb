##################
#### Animal Class
##################

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
  def stats
    return @name, @species, @toys
  end
end


##################
#### Client Class
##################

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
  def stats
    return @name, @age, @pets
  end
end


##################
#### Shelter Class
##################

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
  def stats
    return @name, @animals, @clients
  end
end


##################
#### Testing
##################


happitails = Shelter.new("Happitails")
puts happitails.stats

nora = Client.new("Nora", 26)
puts nora.stats

horace = Animal.new("Horace", "horse")
puts horace.stats






