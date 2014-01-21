require_relative "client"
require_relative "animal"

class Shelter
  attr_reader :name
  attr_accessor :animals, :clients
  #harden 

  def initialize(name)
    @name = name
    @animals = []
    @clients = []
  end

  def display_clients
    puts "Clients:"
    self.clients.each_with_index {|client, num| puts "#{num + 1} #{client.name} #{client.age}"}
  end

  def display_animals
    puts "Animals:"
    self.animals.each_with_index {|animal, num| puts "#{(num + 1)} #{animal.name} the #{animal.species}"}
  end

  def add_animal(animal)
    self.animals << animal
  end

  def add_client(client)
    self.clients << client
  end

  def pick_client_num
    puts "Select a client"
    display_clients
    client_choice = gets.chomp.to_i -1 #re-adjust index
  end

  def pick_animal_num
    puts "Select an animal"
    display_animals
    animal_choice = gets.chomp.to_i -1 #re-adjust index
  end

  def arrange_adoption
    client_animal_hash = pick_adoption_pair
    client = clients[pick_client_num]
    animal = clients[pick_animal_num]
    client.adopt(animal)
    animals.delete(animal)
  end

  def arrange_return
    client = clients[pick_client_num]
    pet = client.return_pet
    add_animal(pet)
  end
end





