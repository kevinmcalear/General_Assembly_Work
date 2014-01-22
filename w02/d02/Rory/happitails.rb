###HappiTails

#################
### Animal Class
#################
class Animal
  def initialize(name, species, toys)
    @name = name
    @species = species
    @toys = toys
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
    return "#{name} is a #{species} with the following toys: #{toys}"
  end

end

#################
### Client Class
#################

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

  def to_s
    return "#{name} is #{age} years old with the following pets: #{pets}"
  end

  def add_pets(animal)
    self.pets().push(animal)
  end

end

#################
### Shelter Class
#################

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

#Menu option 1
  def create_animal
    puts "What is the animal's name?"
    name = gets.chomp
    puts "What is the animal's species?"
    species = gets.chomp
    puts "What toys does the animal have?"
    toys = gets.chomp
    new_animal = Animal.new(name, species, toys)
    self.animals().push(new_animal)
  end
  def create_client
    puts "What is your name?"
    name = gets.chomp
    puts "What is your age?"
    age = gets.chomp.to_i
    puts "Which pet do you want to adopt?"
    pets = gets.chomp
    new_client = Client.new(name, age, pets)
    self.clients().push(new_client)
  end
#adoption
  def adoption
    puts "What is your name?"
    name = gets.chomp
    current_client = self.clients().find do |client|
      client.name == name
      end
    if !current_client
      puts "Sorry, you're not an existing client.  Please create your client profile."
    else
      puts "What is the animal's name?"
      name = gets.chomp
      puts "What is the animal's species?"
      species = gets.chomp
      puts "What toys does the animal have?"
      toys = gets.chomp
      chosen_animal = Animal.new(name, species, toys)
      animal_to_delete = self.animals().find do |animal| 
        animal.name == chosen_animal.name 
        end
      self.animals().delete(animal_to_delete)
      current_client.add_pets("#{name} the #{species}")
    end
  end
  #puts animal up for adoption
  def puts_up_for_adoption
    puts "What is your name?"
    name = gets.chomp
    current_client = self.clients().find do |client|
      client.name == name
    end
    self.clients().delete(current_client)
    puts "You've been deleted from our client roster."
    puts "Can you give us the details about your former pet, so we can add him to the adoption list again?"
    create_animal
  end



end

