require_relative 'happitails.rb'

shelter = Shelter.new("The Bowery Shelter")

#########################
### Method to display the menu
#########################
def menu
  puts `clear`
  puts "********Welcome to The Bowery Shelter********"
  puts "Choose an option"
  puts "  1: Create an animal"
  puts "  2: Create a client"
  puts "  3: Quit"
  response = gets.chomp
  return response
end

menu_choice = menu

while menu_choice != "3"
  case menu_choice
  when "1"
    shelter.create_animal
  when "2"
    shelter.create_client 
  else
    puts "That wasn't an option!"
  end
    puts "Press enter to continue"  
    gets
    menu_choice = menu
end