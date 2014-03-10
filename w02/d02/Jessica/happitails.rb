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

  def add_toys
    toy = Toy.new
    self.toys().push(toy)
  end

  def to_s
    return "#{name} is a #{species}."
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

  def pets
    return @pets
  end

 def add_pets(pet)
    self.pets().push(pet)
  end

end

# class CatLady < Client
#   def add_pets(pet)
#     if pet == "cat"
#       self.pets().push(pet)
#     else
#       puts "Only cats sorry!"
#     end
#   end
# end

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
    puts "What is the animal's species?"
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

