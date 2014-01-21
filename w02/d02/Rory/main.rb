
#########################
### Method to display the menu
#########################

def menu
  puts `clear`
  puts "********Welcome to the Pet Adoption Center********"
  puts "Choose an option"
  puts "  1: Create an animal"
  puts "  2: Create a client"
  puts "  3: Create a shelter"
  puts "  4: Quit"
  response = gets.chomp
  return response
end

#################
### Seed Some Data
#################