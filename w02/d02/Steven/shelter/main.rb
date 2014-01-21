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
  puts "3 - Quit"
  response = gets.chomp.to_i
  return response
end


menu_choice = menu

while menu_choice != 3
  case menu_choice
  when 1
    puts main_shelter.add_animal
  when 2
    puts main_shelter.add_client
  end
  puts "What now?"
  menu_choice = gets.chomp.to_i
end








