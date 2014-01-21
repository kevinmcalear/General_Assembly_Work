
class Shelter
  def initialize(name)
    @name = name
    @animals = []
    @clients = []
  end

  def name
    return @name
  end

  def add_client
    puts "What is the client's name?"
    name = gets.chomp
    puts "What is the client's age?"
    age = gets.chomp.to_i
    client = Client.new(name, age)
    self.clients << (client)
  end

  def add_animal
    puts "What is the animal's name?"
    name = gets.chomp
    puts "What is the animal's species?"
    species = gets.chomp
    animal = Animal.new(name, species)
    self.animals << (animal)
  end

  def animals
    return @animals
  end

  def clients
    return @clients
  end

  def facilitate_adoption

  end

  def facilitate_return

  end

  def to_s
    puts "Welcome to #{name}"
  end



end







    # big_shelter = Shelter.new("happy shelter")
    # puts big_shelter

    # puts add_client

      # def display_animals
  #   if owner
  #     return "#{animals.name} is a #{animals.species}"
  #   else
  #     return "#{animals.name}, the #{animals.species} is owned by #{clients.name}"
  #   end
  # end

  # def display_clients
  #   if pets
  #     return "#{clients.name} is #{clients.age} years old, and #{pets.name} is their #{pets.species}"
  #   else
  #     return "#{clients.name} is #{clients.age} years old."
  #   end
  # end





