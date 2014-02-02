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
    animal.add_toys
    # if species.downcase == "cat"
    #   cat_taker = self.clients_list.shuffle.find do |client|
    #     client.class == CatLady
    #   end

    # end
    self.add_to_animals_list(animal)
  end

  def add_client
    puts "What is the client's name?"
    name = gets.chomp
    puts "What is the client's age?"
    age = gets.chomp.to_i
    # puts "Is this client a cat lady? (yes or no)"
    # cat_lady = gets.chomp.downcase
    # if cat_lady == "yes"
      # client = CatLady.new name, age
      # cat = true
    # else
      client = Client.new name, age
      # cat = false
    # end
    # self.add_to_clients_list(client, cat)
    self.add_to_clients_list(client)
  end

  def add_to_animals_list(animal)
    self.animals_list << animal
  end

  def add_to_clients_list(client)
    self.clients_list << client
  end

  def print_animals_list
    return (self.animals_list.map {|animal| animal.animal_info}).join("\n")
  end

  def print_clients_list
    return (self.clients_list.map {|client| client.client_info}).join("\n")
  end

  def get_which_client
    puts "Please select which client by name:"
    puts
    puts self.print_clients_list
    client_name = gets.chomp
    return self.clients_list.find {|client| client.name == client_name}
  end

  def get_which_animal
    puts "Please select which animal by name:"
    puts
    puts self.print_animals_list
    animal_name = gets.chomp
    return self.animals_list.find {|anim| anim.name == animal_name}
  end

  # def get_adoption_client
  #   puts "Adopting a pet:"
  #   client = self.get_which_client
  #   puts

  #   #Bonus: don't let a client have > 2 pets
  #   if client.pets.length > 1
  #     return "That client has too many pets, you silly goose!"
  #   end
  # end

  def facilitate_adoption
    puts "Adopting a pet:"
    client = self.get_which_client
    puts

    #Bonus: don't let a client have > 2 pets
    if client.pets.length > 1
      return "That client has too many pets, you silly goose!"
    end

    animal = self.get_which_animal
    puts
    #new method here: "execute adoption" for these two lines
    self.animals_list.delete(animal)
    puts client.adopt_animal(animal)
  end

  def facilitate_return
    print "Returning a pet:"
    client = self.get_which_client
    animal = client.get_which_pet
    self.animals_list << animal
    puts client.return_pet(animal)
  end
  
end