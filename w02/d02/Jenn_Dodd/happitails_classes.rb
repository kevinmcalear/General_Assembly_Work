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
  def list_pets
    if self.pets != []
      self.pets.each do |pet|
        puts pet
      end
    else
      puts "No animals adopted yet!"
    end
  end
  def add_pet(adoptee_pet)
    self.pets().push(adoptee_pet)
    puts "#{client_name} has adopted #{adoptee_pet}!"
  end
  def give_back_pet(adoptee_pet)
    self.pets().delete(adoptee_pet)
    puts "You didn't deserve #{adoptee_pet} anyway, #{client_name}!"
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
  def list_animals
    if self.animals != []
      self.animals.each do |animal|
        puts animal
      end
    else
      puts "No animals to adopt yet!"
    end
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
  def list_clients
    if self.clients != []
      self.clients.each do |client|
        if client.pets.count > 0
          puts "#{client} owns #{client.pets.join(", ")}."
        else 
          puts "#{client} doesn't have any pets yet."
        end
      end
    else
      puts "No clients on file yet!"
    end
  end
  def reclaim_pet(adoptee_pet)
    self.animals().push(adoptee_pet)
    puts "Welcome back, #{adoptee_pet}!"
  end
  def delete_pet(adoptee_pet)
    self.animals().delete(adoptee_pet)
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





