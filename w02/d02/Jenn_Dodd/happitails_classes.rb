##################
#### Animal Class
##################

class Animal
  def initialize(animal_name, species)
    @animal_name = animal_name
    @species = species
    @toys = []
  end
  def animal_name
    return @animal_name
  end
  def species
    return @species
  end
  def toys
    return @toys
  end
  def stats
    return @animal_name, @species, @toys
  end
  def to_s
    return "#{animal_name} the #{species}"
  end
end


##################
#### Client Class
##################

class Client
  def initialize(client_name, age)
    @client_name = client_name
    @age = age
    @pets = []
  end
  def client_name
    return @client_name
  end
  def age
    return @age
  end
  def pets
    return @pets
  end
  def stats
    return @client_name, @age, @pets
  end
  def to_s
    return "#{client_name}"
  end
end


##################
#### Shelter Class
##################

class Shelter
  def initialize(shelter_name)
    @shelter_name = shelter_name
    @animals = []
    @clients = []
  end
  def shelter_name
    return @shelter_name
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
    puts "What kind of animal is #{name}?"
    species = gets.chomp
    new_animal = Animal.new(name, species)
    self.animals().push(new_animal)
    puts "#{name} the #{species} has joined the shelter!"
  end
  def add_client
    puts "What is the client's name?"
    name = gets.chomp
    puts "How old is #{name}?"
    age = gets.chomp
    new_client = Client.new(name, age)
    self.clients().push(new_client)
    puts "#{name} is now a client!"
  end
  def stats
    return @shelter_name, @animals, @clients
  end
end


##################
#### Testing
##################


# happitails = Shelter.new("Happitails")
# puts happitails.stats

# nora = Client.new("Nora", 26)
# puts nora.stats

# horace = Animal.new("Horace", "horse")
# puts horace.stats


# happitails.add_animal
# puts happitails.stats

# happitails.add_client
# puts happitails.stats

# happitails.add_animal
# puts happitails.stats

# happitails.add_client
# puts happitails.stats





