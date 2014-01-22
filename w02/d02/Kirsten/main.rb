require_relative'happitails'
require_relative'seeds'
require 'pry'

def menu
  puts "Welcome to the shelter menu"
  puts "What would you like to do?"
  puts "1. Put an animal up for adoption"
  puts "2. Add a client"
  puts "3. List all the pets in the shelter"
  puts "4. List all the clients"
  puts "5. Adopt an animal"
  puts "6. Quit"
end

def create_animal
  puts "What is the animal's name?"
  response = gets.chomp
  name = response
  puts "What species of animal is it?"
  response = gets.chomp
  species = response
  puts "What toys does it have? Put \"none\" for none"
  response = gets.chomp
  toys = response
  puts "Who is bringing it in?"
  response = gets.chomp
  drop_off_client = response
  drop_off_client = Client.new("#{drop_off_client}")
  $aspca.add_client(drop_off_client)

  name = Animal.new("#{name}")
  name.species=(species)
  name.add_toy(toys)
  puts "You have added #{name.name}, who is a #{species}, brought in by #{drop_off_client.name}."
  $aspca.add_pet(name)
  menu
end

def create_client
  puts "What is the client's name?"
  response = gets.chomp
  client_name = response
  puts "How old is the client?"
  response = gets.chomp
  age = response
  client_name = Client.new("#{client_name}")
  client_name.age=(age)
  puts "You have added #{client_name.name} who is #{age}."
  $aspca.add_client(client_name)
  menu
end

def adopt_animal
  puts "Which animal is being adopted?"
  response = gets.chomp
  adopted_animal = response
  to_adopt = $aspca.pets.find do |pet|
    pet.name == adopted_animal
  end
  puts "Who is adopting the animal?"
  response = gets.chomp
  adopting_client = response
  adopting = $aspca.clients.find do |client|
    client.name == adopting_client
  end
  $aspca.adopt_out_pet(to_adopt, adopting)
  menu
end


menu
choice = gets.chomp
while choice != "6"
if choice == "1"
  create_animal
elsif choice == "2"
  create_client
elsif choice == "3"
  $aspca.list_pets
  menu
elsif choice == "4"
  $aspca.list_clients
  menu
elsif choice == "5"
  adopt_animal
else
  puts "I didn't understand."
  choice = gets.chomp
end
choice = gets.chomp

end


