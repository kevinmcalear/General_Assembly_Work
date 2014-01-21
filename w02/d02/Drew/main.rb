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
  puts "  3: Display all animals"
  puts "  4: Display all clients"
  puts "  5: Quit"
  response = gets.chomp
  return response
end

menu_choice = menu

while menu_choice != "5"
  case menu_choice
  when "1"
    shelter.create_animal
  when "2"
    shelter.create_client 
  when "3"
    shelter.animals.each do |animals| 
      puts animals
    end
  when "4"
    shelter.client.each do |client|
      puts client
    end
  else
    puts "That wasn't an option!"
  end
    puts "Press enter to continue"  
    gets
    menu_choice = menu
end