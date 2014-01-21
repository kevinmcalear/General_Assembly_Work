
require_relative("happitails")
require_relative("seeds")
#########################
### Method to display the menu
#########################

def menu
  puts `clear`
  puts "********Welcome to the Pet Adoption Center********"
  puts "Choose an option"
  puts "  1: Create an animal"
  puts "  2: Create a client"
  puts "  3: Display all animals"
  puts "  4: Display all clients"
  puts "  5: Adopt an animal"
  puts "  6: Return an animal"
  puts "  7: Quit"
  response = gets.chomp
  return response
end

#################
### Main Program
#################

menu_choice = menu

while menu_choice != "7"
  case menu_choice
  when "1"
    $shelter.create_animal
  when "2"
    $shelter.create_client
  when "3"
    $shelter.animals.each do |animal|
      puts "#{animal}"
    end
  when "4"
    $shelter.clients.each do |client|
      puts "#{client}"
    end
  when "5"
    $shelter.adoption
  when "6"
    $shelter.puts_up_for_adoption
  else
    puts "That wasn't an option"
  end
  puts "Press enter to continue"
  gets
  menu_choice = menu
end