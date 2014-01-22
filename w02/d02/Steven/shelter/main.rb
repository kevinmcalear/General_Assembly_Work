require_relative 'clients_class'
require_relative 'shelter_class'
require_relative 'animal_class'
#require_relative 'seeds'

main_shelter = Shelter.new("Happy Tails!")


def menu
  puts "-------------------------------------"
  puts "*********Welcome to Happy Tails!*********"
  puts "Please choose from the following options"
  puts "1 - create an animal"
  puts "2 - create a client"
  puts "3 - display all animals"
  puts "4 - display all clients"
  puts "5 - client adopt an animal"
  puts "6 - client return animal"
  puts "7 - Quit"
  response = gets.chomp.to_i
  return response
end


menu_choice = menu

while menu_choice != 7
  case menu_choice
  when 1
    puts main_shelter.add_animal
  when 2
    puts main_shelter.add_client
  when 3
      #puts main_shelter.display_animals
      main_shelter.animals.each do |animal|
      puts "#{animal.name} is a #{animal.species}"
    end
  when 4
    #puts main_shelter.display_clients
      main_shelter.clients.each do |client|
      puts "#{client.name} is #{client.age} years old" 
    end
  
  when 5
    puts "Enter the name of the animal would you like to adopt"
    main_shelter.animals.each do |animal|
      puts "#{animal.name} the #{animal.species}"
    end
      animal_name = gets.chomp
    
    puts "Which client would you like to assign this animal to?"
    main_shelter.clients.each do |client|
    puts "#{client.name}, #{client.age} yrs old" 
  end
    client_name = gets.chomp

  animal = main_shelter.animals.find do |animal|
      animal.name == animal_name
  end

  client = main_shelter.clients.find do |client|
    client.name == client_name
  end

client.add_pet(animal)

#call animal to adopt = animal_to_remove(animal name)
  when 6

  end
  puts "What now?"
  menu_choice = gets.chomp.to_i
end








