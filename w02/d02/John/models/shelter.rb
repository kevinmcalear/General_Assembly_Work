class Shelter
  def initialize(name)
    #initialize name
    @name = name

    #initialize empty animals list and clients list
    @animals_list = []
    @clients_list = []
  end

  def name
    return @name
  end

  def animals_list
    return @animals_list
  end

  def clients_list
    return @clients_list
  end

  def add_animal
    puts "What is the animal's name?"
    name = gets.chomp
    puts "What is the animal's species?"
    species = gets.chomp
    animal = Animal.new name, species
    self.add_to_animals_list(animal)
  end

  def add_client
    puts "What is the client's name?"
    name = gets.chomp
    puts "What is the client's age?"
    age = gets.chomp
    client = Client.new name, age
    self.add_to_clients_list(client)
  end

  def add_to_animals_list(animal)
    self.animals_list << animal
  end

  def add_to_clients_list(client)
    self.clients_list << client
  end

  def print_animals_list
    #print the list of shelter's animals
    a = self.animals_list.map {|animal| animal.name}
    puts "{#{a.join(", ")}}"
  end

  def print_clients_list
    #print the list of shelter's clients
    a = self.clients_list.map {|client| client.name}
    return "{#{a.join(", ")}}"
  end

  def get_which_client
    puts "what is the name of the client?"
    puts puts self.print_clients_list
    client_name = gets.chomp
    return self.clients_list.find {|client| client.name == client_name}
  end

  def get_which_animal
    puts "Please select which animal:"
    self.print_animals_list
    animal_name = gets.chomp
    return self.animals_list.find {|anim| anim.name == animal_name}
  end

  def facilitate_adoption
    # get client
    print "For adopting, "
    client = self.get_which_client
    if client.pets.length > 1
      puts
    end

    # get animal
    animal = self.get_which_animal

    # add animal to client's pets
    client.adopt_animal(animal)
    puts "#{client.name}'s pets now are: #{client.print_pets_list}"

    # remove animal from shelter's list
    self.animals_list.delete(animal)

  end

  def facilitate_return
    #get client
    print "For returning, "
    client = self.get_which_client

    #get pet
    animal = client.get_which_pet
    
    #remove animal from client's pet list
    client.return_pet(animal)
    
    puts "#{client.name}'s pets now are #{client.print_pets_list}"

    #add animal to shelter's list
    self.animals_list << animal

  end
  
end