require 'pry'
require_relative 'models/shelter_class'
require_relative 'models/animal_class'
require_relative 'models/client_class'

$new_shelter = Shelter.new("HappiTails")

require_relative 'models/seeds'


def menu
  puts "-----------------------------"
  puts "Animal Shelter Management App"
  puts "(1). New Animal"
  puts "(2). New Client"
  puts "(3). New Shelter"
  puts "(4). Display all Animals"
  puts "(5). Display all Clients"
  puts "(6). Client/Animal Adoption"
  puts "(7). Client/Animal Surrender"
  puts "(8). Add Animal Toy"
  puts "(Q). to Quit"
end

menu

response = gets.chomp.downcase

until response == "q"

  case response
  when "1"
    $new_shelter.add_animal_to_shelter
    menu 

    response = gets.chomp.downcase

  when "2"
    $new_shelter.add_client_to_shelter
    menu
    response = gets.chomp.downcase


  when "3"
    puts "What is the name of this shelter?"

    name = gets.chomp.downcase

    user_shelter = Shelter.new(name)
    puts "A new shelter named #{user_shelter.name.capitalize} has been created!"
    menu
    response = gets.chomp.downcase

  when "4"
    counter = 1
    $new_shelter.shelter_animals.each do |animal|
      puts "#{counter}. Animal Name: #{animal.name.capitalize} - Species: #{animal.species}"
      counter += 1
    end

    menu
    response = gets.chomp.downcase

  when "5"
    counter = 1
    $new_shelter.shelter_clients.each do |client|
      puts "#{counter}. Client Name: #{client.name.capitalize} - Age: #{client.age} years old"
      counter += 1
    end

    menu
    response = gets.chomp.downcase

  when "6"
    $new_shelter.adopt_animal

    menu
    response = gets.chomp.downcase

  when "7"
    $new_shelter.surrender_animal

    menu
    response = gets.chomp.downcase

  when "8"

    puts "Please enter name of animal to be given toy."
    animal_name = gets.chomp.downcase

      # binding.pry

    puts "Please enter the species of animal to be given toy."
    animal_species = gets.chomp.downcase

    pet_finder = $new_shelter.shelter_animals.find do |pet|
      pet.name == animal_name
      pet.species == animal_species

    end

    puts "Please enter toy name."
    toy = gets.chomp.downcase

    pet_finder.add_toy(toy)

    puts "#{animal_name} the #{animal_species} has been given a #{toy}!"

    menu
    response = gets.chomp.downcase

  else 
    puts "That is not a valid option! Please try again."
    response = gets.chomp.downcase
  end

end



# test_shelter = Shelter.new("Lost Pets 4 Eww")
# test_animal = Animal.new("Jack", "dog")
# test_animal2 = Animal.new("Cloee", "cat")

# test_shelter.shelter_animals.push(test_animal)


