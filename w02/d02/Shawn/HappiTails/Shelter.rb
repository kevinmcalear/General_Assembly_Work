#HappiTails Animal Shelter
#Shelter Object Definition

# require_relative 'Client.rb'
# require_relative 'Animal.rb'
# require_relative 'happitails'

class Shelter

  def initialize(name)
    @name = name
    @animals = []
    @clients = []
    # @remove_client = remove_client
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

  def facilitate_adoption
    puts "




    What's the new client name?"
    new_client_name = gets.chomp
    puts "




    What's the new client's age?"
    new_client_age = gets.chomp
    new_client = Client.new(new_client_name, new_client_age)
    self.clients.push(new_client)
    puts "




    Which pet would #{new_client_name} like to adopt?"
    puts "




    #{self.animals.join", \n"}
    "
    animal_to_adopt = gets.chomp
    #new_client.pets.push(animal_to_adopt)
    print self.animals
  

    puts "




    #{animal_to_adopt} was adopted by #{new_client_name} !"
    puts self.clients[-1]
    self.clients.delete(new_client)
  end

  def remove_client
      puts "



      Which client would you like to remove from the adopter's list?"
      name_to_remove = gets.chomp
      self.clients.delete(name_to_remove)
  end

  def put_up_for_adoption
    puts "




    Please tell me the client's name :"
    client_name = gets.chomp
    puts "




    How old is the client?"
    client_age = gets.chomp
    puts "




    What's #{client_name}'s pet's name?"
    new_pet_name = gets.chomp
    puts "




    ...and what species of animal is #{new_pet_name}?"
    new_pet_species = gets.chomp
    new_client = Client.new(client_name, client_age)
    new_client.pets.push(new_pet_name)
    puts "




    Okay...#{client_name}...
    Please give me a moment..."

    new_pet = Animal.new(new_pet_name, new_pet_species)
    self.animals.push(new_pet)
    self.clients.push(new_client)
    puts "




    I successfully added #{new_pet_name} the #{new_pet_species} to the shelter's database!"
    puts self.animals[-1]
  end


  def to_s
   self.animals.each do |x|
     return x
   end

    self.clients.each do |x|
      return x
    end

  end


  end



