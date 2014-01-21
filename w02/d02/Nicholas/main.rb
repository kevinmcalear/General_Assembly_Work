require_relative 'happitails'
shelter = Shelter.new("Paws4U")
puts "Your new Animal Shelter #{shelter.name} was just created!"

def menu
  puts"---------------------------------"
  puts"   Shelter Options"
  puts" (1) Create New Client"
  puts" (2) Create New Animal"
  puts" (3) Quit"
  user_choice = gets.chomp
  return user_choice.to_i 
end

user_choice = menu 

while user_choice != 3
  case user_choice

  when 1
    shelter.add_client

  when 2
    shelter.add_animal

  else
    puts "Please enter choice from the menu"
    user_choice = gets.chomp
  end
end
  