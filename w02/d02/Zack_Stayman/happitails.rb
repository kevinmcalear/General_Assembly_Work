require 'pry'
require_relative 'models/animals'
require_relative 'models/client'
require_relative 'models/shelter'

puts `clear`

puts "Hello there! Welcome to your shelter! what is it called?"
input = gets.chomp
all_shelters = []
shelter = Shelter.new(input)
all_shelters.push(shelter)
# Menu
choice = nil
while choice != "4"
  puts `clear`
  puts "Welcome! Please select an option from below"
  puts "Press 1 to add an animal to a shelter"
  puts "Press 2 to add a client to a shelter"
  puts "Press 3 to create a new shelter"
  puts "Press 4 to exit the program"
  choice = gets.chomp
  case choice
    
# Create an animal and add it to a building
when "1"
  puts "What shelter does the animal live in? Please select from the list below."

  all_shelters.each do |shelter|
    puts shelter.name
  end
  puts "\n"

  location = gets.chomp

  home = all_shelters.find do |shelter|
    shelter.name == location
  end

  puts "What is the animal's name?"
  name = gets.chomp
  puts "What species is the animal?"
  species = gets.chomp

  animal = Animal.new(name, species)

  home.add_animal=(animal)


# Create a client
when "2"
  puts "What is the client's name?"
  client_name = gets.chomp

  puts "Which shelter is #{client_name} a client of?"
   all_shelters.each do |shelter|
    puts shelter.name
  end
  puts "\n"

  shelter_name = gets.chomp

  shelter_used = all_shelters.find do |shelter|
    shelter.name == shelter_name
  end

  puts "How old is #{client_name}?"
  client_age = gets.chomp.to_i

  client = Client.new(client_name, client_age)
  shelter_used.add_client=(client)
# Create a shelter
when "3"
  puts "What is your new shelter called?"
  input = gets.chomp
  shelter = Shelter.new(input)
  all_shelters.push(shelter)
# Quit
when "4"
  puts "Goodbye"
else
  puts "That isn't a valid option, please try again."
end
end