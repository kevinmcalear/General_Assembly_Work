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

  def to_s
    return name
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

  def add_pet(pet)
    self.pets().push(pet)
  end

  def list_pets
    self.pets
  end

  def to_s
    puts "#{name} owns #{list_pets}"
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
      puts "What is the name of the animal?"
      name = gets.chomp
      puts "What is the species?"
      species = gets.chomp
      animal = Animal.new(name, species)
      self.animals().push(animal)
    end

    def add_client
      puts "What is the name of the client?"
      name = gets.chomp
      puts "What is the age of the client?"
      age = gets.chomp
      client = Client.new(name, age)
      self.clients().push(client)
    end

  end



