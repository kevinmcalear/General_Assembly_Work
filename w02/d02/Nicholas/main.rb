require 'pry'
require_relative 'happitails'
require_relative 'seeds'
#Take out of main rb and put in seeds when making seeds!
# $shelter = Shelter.new("Paws4U")
# puts "Your new Animal Shelter #{$shelter.name} was just created!"

def menu
  puts"---------------------------------"
  puts"   Shelter Options"
  puts" (1) Create New Client"
  puts" (2) Create New Animal"
  puts" (3) List Clients"
  puts" (4) List Animals"
  puts" (5) Adopt an animal"
  puts" (6) Put animal up for adoption"
  puts" (7) List the Owners and their pets"
  puts" (8) Quit"
  user_choice = gets.chomp
  return user_choice.to_i 
end
user_choice = menu

while user_choice != 8

  case user_choice

  when 1
    $shelter.add_client

  when 2
    $shelter.add_animal

  when 3
    if $shelter.clients.empty?
      puts "No clients in the list yet."
    else
    $shelter.clients.each {|client| print client.name + " | "}
    puts
    end

  when 4
    if $shelter.animals.empty?
      puts "No animals at the shelter yet."
    else
    $shelter.animals.each {|animal| print animal.name + " | "}
    puts
    end

  when 5
    puts "What client wants to adopt?"
    client_to_adopt = gets.chomp
    puts "What pet would you like to assign to that client?"
    pet_to_assign = gets.chomp
    client = $shelter.clients.find do |client_name|
      client_name.name == client_to_adopt
    end
    pet = $shelter.animals.find do |animal_name|
      animal_name.name == pet_to_assign
    end

    if client.pets.length > 1
      puts "You Can't adopt any more pets!!! GO HOME!"
    else

    client.add_pet(pet)
    $shelter.animals.delete(pet)
    end

  when 6
    puts "What client wants to give up their pet?"
    client_to_give_up = gets.chomp
    puts "What pet do they want to give?"
    pet_to_give = gets.chomp
    client = $shelter.clients.find do |client_name|
      client_name.name == client_to_give_up
    end
    pet = client.pets.find do |pet|
      pet.name == pet_to_give
    end
    $shelter.animals().push(pet)
    client.pets.delete(pet)
  when  7
    client_list = $shelter.clients()
    client_list.each.each {|c| puts c.to_s}
    end

  user_choice = menu
end
