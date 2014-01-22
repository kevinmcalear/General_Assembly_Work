require_relative "models/animal"
require_relative "models/client"
require_relative "models/shelter"
require_relative 'seeds'
require 'pry'

def menu(shelter)
  puts "Welcome! Please choose an option:"
  puts "1) Create an animal"
  puts "2) Create a client"
  puts "3) List all animals"
  puts "4) List all clients"
  puts "5) Adopt a pet"
  puts "6) Return a pet"
  puts "7) Quit"
  menu_choice = gets.chomp

  case menu_choice
  when '1'
    shelter.add_animal
  when '2'
    shelter.add_client
  when '3'
    puts shelter.print_animals_list
  when '4'
    puts shelter.print_clients_list
  when '5'
    puts shelter.facilitate_adoption
  when '6'
    puts shelter.facilitate_return
  end
  puts
  return menu_choice

end


while menu($shelter1) != "7"
end










