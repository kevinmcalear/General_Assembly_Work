class Shelter
  def initialize(shelter_name)
    @shelter_name = shelter_name
    @all_animals = []
    @all_clients = []
  end

  #getter method for shelter_name
  def shelter_name
    return @shelter_name
  end

  #method to create a shelter
  def add_shelter
    puts "What is the name of the shelter?"
    shelter_name = gets.chomp
    new_shelter = Shelter.new(shelter_name)
  end

  def all_animals
    return @all_animals
  end
  
  #method to create an animal
  def add_animal
    puts "What is the animal's name?"
    animal_name = gets.chomp
    puts "What is the animal's species?"
    species = gets.chomp
    animal = Animal.new(animal_name, species)
    self.all_animals().push(animal)
  end

  #add a method to delete an animal
  def delete_animal(animal_to_delete)
   all_animals.delete_if {|animal| animal == animal_to_delete}
  end

  def remove_animal(animal_name)
    animal_to_remove = self.all_animals.find do |animal|
      animal.animal_name == animal_name
    end
    self.all_animals.delete(animal_to_remove) 
  end

  def all_clients
  return @all_clients
  end

#add seed data to the array
  def add_clients_seed(client)
    return all_clients.push(client)
  end
#method to create a client
def add_client
  puts "What is the client's name?"
  client_name = gets.chomp
  puts "What is the client's age?"
  age = gets.chomp
  new_client = Client.new(client_name, age)
  self.all_clients().push(new_client)
end

def to_s
  return "#{shelter_name}"
  end
end

