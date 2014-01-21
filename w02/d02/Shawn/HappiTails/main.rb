#HappiTails Animal Shelter App

require_relative 'Animal'
require_relative 'Client'
require_relative 'Shelter'

happi_tails_shelter = Shelter.new("Happy Tails Shelter")


puts "
________________________________________

Welcome to HappiTails Animal Shelter App
________________________________________

Please select from the list of options below:

(a) Create an Animal Listing
(b) Create a Client Listing
(c) Create a Shelter Listing
(d) Quit

________________________________________"

user_input = gets.chomp

  case user_input
  when "a"
    puts "What's the animal's name?"
    new_animal_name = gets.chomp
    puts "What's #{new_animal_name}'s species?"
    new_animal_species = gets.chomp
    new_animal = Animal.new(new_animal_name, new_animal_species)
    happi_tails_shelter.animals.push(new_animal)

    puts "#{new_animal.name}, a #{new_animal.species}, was added to the HappiTails listing of adoptable pets!"
    puts happi_tails_shelter.animals.to_s

  when "b"
    puts "What's the new client's name?"
    new_client_name = gets.chomp
    puts "How old is #{new_client_name}?"
    new_client_age = gets.chomp
    new_client = Client.new(new_client_name, new_client_age)
    puts "#{new_client_name} was added to the database of clients!"
    happi_tails_shelter.clients.push(new_client)

  when "c"
    puts "What's the name of the new shelter?"
    new_shelter_name = gets.chomp
    new_shelter = Shelter.new(new_shelter_name)
    puts "#{new_shelter_name} was added to the database!"

  when "d"
    puts "Goodbye..."
  end
