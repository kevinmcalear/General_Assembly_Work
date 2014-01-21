####################
#####Animal Class
####################

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
  def to_s
    return "#{name} is a #{species}"
  end
end

####################
#####Client Class
####################

class Client
  def initialize(name, age)
    @name = name
    @age = age
    @animals = []
  end
  def name
    return @name
  end
  def age
    return @age
  end
  def animals
    return @animals
  end
  def to_s
    return "#{name} is #{age} years old"
  end
end

####################
#####Shelter Class
####################

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
  def add_animals
    puts "What is the animals name?"
    name = gets.chomp
    puts "What is the animals species?"
    species = gets.chomp
    animal = Animal.new(name, species)
    self.animals().push(animal)
  end
    def add_clients
    puts "What is your name?"
    name = gets.chomp
    puts "What is your age?"
    age = gets.chomp
    client = Client.new(name, age)
    self.clients().push(client)
  end
end







