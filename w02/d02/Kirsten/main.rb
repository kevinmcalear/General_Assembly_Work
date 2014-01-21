require_relative "happitails"
require_relative "seeds"

# create new shelter
# display menu of options
def menu
  puts "Welcome to the shelter menu"
  puts "What would you like to do?"
  puts "1. Add an animal"
  puts "2. Add a client"
  puts "3. Create a new shelter"
  puts "4. Quit"
end
def create_animal
  puts "What is the animal's name?"
  response = gets.chomp
  reponse = name
  puts "What species of animal is it?"
  response = gets.chomp
  response = species
  puts "What toys does it have? Put \"none\" for none"
  response = gets.chomp
  response = toys

  name = Animal.new("#{name}")
  name.species=(species)
  if toys != "none"
    name.add_toy(toy)
  end
  puts "You have added #{name}, who is a #{species}."
  shelter.receive_pet(name,none)
end
# Create an animal - ask for appropriate info
#   add to pets array

def create_client
  puts "What is the client's name?"
  response = gets.chomp
  response = client_name
  puts "How old is the client?"
  response = gets.chomp
  response = age

  client_name = Client.new("#{client_name}")
  client_name.age=(age)

  puts "You have added #{client_name} who is #{age}."
  shelter.add_client(client_name)

end
# Create a client - ask for appropriate info
#   add to client array
# Create a shelter
# Quit


Commit 2

# add options to menu :Display all animals
#                     :Display all clients

commit 3

# add options: Adopt animal - remove animal from pets array
#             Client puts animal up for adoption - add animal to pets array.

