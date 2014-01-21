require_relative 'happitails.rb'
require_relative 'seed.rb'

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
  puts "  5: Adopt an animal!"
  puts "  6: Put an animal up for adoption"
  puts "  7: Quit"
  response = gets.chomp
  return response
end

menu_choice = menu

while menu_choice != "7"
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
  when "5"
    shelter.animals.each do |animals| 
      puts animals
    end
    shelter.adopt_animal
    ## unsure on adopt method!! ##
    ## how to delete the species from the index ##
  when "6"
  else
    puts "That wasn't an option!"
  end
    puts "Press enter to continue"  
    gets
    menu_choice = menu
end