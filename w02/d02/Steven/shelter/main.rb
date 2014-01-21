require_relative 'clients_class'
require_relative 'shelter_class'
require_relative 'animal_class'
require_relative 'seeds'

main_shelter = Shelter.new("Big Happy Fun Shelter!")


def menu
  puts "-------------------------------------"
  puts "Welcome to the shelter!"
  puts "Please choose from the following options"
  puts "1 - create an animal"
  puts "2 - create a client"
  puts "3 - display all animals"
  puts "4 - display all clients"
  puts "5"
  puts "6"
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
     #animals.display_animals 
      main_shelter.animals.each do |animal|
      puts "#{animal.name} is a #{animal.species}"
    end
  when 4
    main_shelter.clients.each do |client|
    puts "#{client.name} is #{client.age} years old" 
  end
  
  end
  puts "What now?"
  menu_choice = gets.chomp.to_i
end








