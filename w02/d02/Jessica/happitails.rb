class Animal
  def initialize(name, spieces)
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

 def add_toys
    toy = Toy.new
    self.toys().push(toy)
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
    return @name
  end

  def animals
    return @animals
  end

 def add_animals
    animal = Animal.new
    self.animals().push(animal)
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

  def add_animal
    puts "What is the animal's name?"
    name = gets.chomp
    puts "What is the animal's spieces?"
    species = gets.chomp
    animal = Animal.new(name, species)
    self.animals().push(animal)
  end

  def add_client
    puts "What is your name?"
    name = gets.chomp
    puts "What is your age?"
    age = gets.chomp.to_i
  client = Client.new(name, age)
    self.clients().push(client)
  end
end


  # def to_s_animal
  #   return "#{name} is a #{species}. There are #{animals.count} animals."
  # end

  #  def to_s_client
  #   return "#{name} is located at #{age} and has. There are #{clients.count} clients ."
  # end

