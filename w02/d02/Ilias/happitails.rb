class Animal
  
  def initialize(name, species)
    @name = name
    @species = species
    @animal_toys = []
  end

  def add_toy=(toy)
    @animal_toys << toy
  end

end


class Client

  def initialize(name, age)
    @name = name
    @age = age
    @pets = []
  end

  def name()
    return @name
  end

  def age()
    return @age
  end

  def adopt=(pet)
    pets << pet
  end

  def show_pets()
    return @pets
  end

  def to_s
    "This client, #{self.name}, is #{self.age} years old and has the following pets: #{self.pets}"
  end

end


class Shelter

  def initialize(name)
    @name = name
    @shelter_clients = []
    @shelter_animals = []
  end

  def name()
    return @name
  end

  def add_client(client)
    @client = client
    @shelter_clients << @client
  end

  def show_clients()
    return @shelter_clients
  end

  def add_animal(animal)
    @animal = animal
    @shelter_animals << @animal
  end

  def show_pets()
    return @shelter_animals
  end

  def adopt(client, pet)
    @adopter = @shelter_clients.select { |name| name.eql?(client) }
    @pet = @shelter_animals.select { |name| name.eql?(pet) }
    puts "#{@adopter} just adopted #{@pet}!"
    return [@adopter, @pet]
  end

  def to_s()
    "This shelter is named #{self.name} with clients: #{self.show_clients}"
  end

end

class Menu

  def animal()
    puts "Ok, let's register an animal. Please enter their name:"
    name = gets.chomp.capitalize
    puts "And what kind of animal is #{name}?"
    species = gets.chomp.to_sym
    @new_animal = Animal.new(name, species)
    puts "Nice! #{name} the #{species} has been registered."
  end

  def register_animal()
    return @new_animal
  end

  def client()
    puts "Ok, let's register a client. Please enter their name:"
    name = gets.chomp.capitalize
    puts "And how old is #{name}?"
    age = gets.chomp.to_i
    new_client = Client.new(name, age)
    puts "Good job! We've registered #{name} as a client."
  end

  def register_client()
    return @new_client
  end

  def shelter()
    puts "Ok, let's register a new shelter"
    name = gets.chomp.capitalize
    new_shelter = Shelter.new(name)
    puts "Lovely. The #{name} shelter has been registered."
  end

end


# -------------------------------------

# shelter = Shelter.new("GA")
# human1 = Client.new("Ilias", "23")
# pet1 = Animal.new("Simba", "cat")


# shelter.add_client(human1)
# shelter.show_clients
# shelter.add_animal(pet1)
# shelter.adopt(human1, pet1)

#-------------------------------------
##Menu##
menu = Menu.new
shelter = Shelter.new("GA")

puts "****Hi, Welcome to your Virtual Adoption Center!****\n"
puts "Please choose from the following options:"
puts "create an (A)nimal, create a (C)lient, create a (S)helter, or (Q)"
user_input = gets.chomp.upcase

case user_input
when "A"
  menu.animal
  shelter.add_animal(menu.register_animal)
when "C"
  menu.client
  shelter.add_client(menu.register_client)
when "S"
  menu.shelter
when "Q"
  exit
end

