### Define Animal Class ###

class Animal
  def initialize (name, species)
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

# animal = Animal.new("rosie", "dog")

# puts animal.name 

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
    #animal array to store data
    @animals = []
    #clients array to store data
    @client = []
  end

  def name
    return @name
  end

  def animals
    return @animals
  end


  def create_animal
    puts "What is the name of the animal?"
    name = gets.chomp
    puts "What is the species of the animal"
    species = gets.chomp
    create_animal = Animal.new(name, species)
    @animals.push(create_animal)
  end

 def create_client
    puts "What is the clients name?"
    name = get.chomp
    puts "What is the clients age?"
    age = gets.chomp.to_i
    new_client = Client.new(name, age)
    @client.push(new_client)
  end

end

