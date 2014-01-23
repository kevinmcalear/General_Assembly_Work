class Shelter
  def initialize(name)
    @name = name

    @shelter_animals = []
    @shelter_clients = []
  end

  def name 
    return @name
  end

  def shelter_animals
    return @shelter_animals
  end

  def shelter_clients
    return @shelter_clients
  end

  def add_animal_to_shelter
    puts "What is this animal's name?"
    name = gets.chomp.downcase

    puts "What is this animal's species?"
    species = gets.chomp.downcase

    animal = Animal.new(name, species)
    
    self.shelter_animals().push(animal)
    puts "-----------------------------"
    puts "#{name.capitalize} the #{species} has been added!"
  end

  def add_client_to_shelter
    puts "What is the new client's name?"
    name = gets.chomp.downcase

    puts "What is the new client's age?"
    age = gets.chomp.to_i

    client = Client.new(name, age)

    self.shelter_clients().push(client)
    puts "-----------------------------"
    puts "#{name.capitalize}, aged #{age} years has been added!."
  end

  def adopt_animal
    puts "Please enter name of animal to be adopted."
    animal_name = gets.chomp.downcase

      # binding.pry

    puts "Please enter the species of animal to be adopted."
    animal_species = gets.chomp.downcase

    pet_finder = self.shelter_animals().find do |pet|
      pet.name == animal_name
      pet.species == animal_species
    end

    animal_index = @shelter_animals.index(pet_finder)

    adopted_animal = pet_finder

    self.shelter_animals().delete_at(animal_index)

      # puts @shelter_animals

    puts "Please enter name of client"
    client_name = gets.chomp.downcase

    puts "Please enter age of client"
    client_age = gets.chomp.to_i

    client_finder = self.shelter_clients().find do |adopter|
      adopter.name == client_name
      adopter.age == client_age
    end

    found_client = client_finder

    #binding.pry

    found_client.add_pet(adopted_animal)

      # client_index = @shelter_clients.index(client_finder)

      # self.shelter_clients().push(pet_finder)
  end

  def surrender_animal
    puts "Please enter name of client surrendering animal"
    client_name = gets.chomp.downcase

    puts "Please enter age of client"
    client_age = gets.chomp.to_i

    client_finder = self.shelter_clients().find do |client|
      client.name == client_name
      client.age == client_age
    end

    # client_index = @shelter_clients.index(client_finder)    

    #binding.pry

    puts "Please enter name of animal to be surrendered."
    animal_name = gets.chomp.downcase

      # binding.pry

    puts "Please enter the species of animal to be surrendered."
    animal_species = gets.chomp.downcase

    pet_finder = client_finder.list_pets.find do |pet|
      pet.name == animal_name
      pet.species == animal_species
    end

    animal_index = client_finder.list_pets.index(pet_finder)

    self.shelter_animals().push(pet_finder)
    client_finder.surrender_pet(animal_index)

    # animal_index = @shelter_animals.index(pet_finder)

    # adopted_animal = pet_finder

    # self.shelter_animals().delete_at(animal_index)

      # puts @shelter_animals

    
  end


end