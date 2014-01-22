require_relative'animal'
require_relative'client'
require_relative'shelter'

def quit
  puts "Good Bye!"
end

def menu
  puts "*******Menu*******"
  puts "1. Create an animal"
  puts "2. Create a client"
  puts "3. Display all animals"
  puts "4. Display all clients"
  puts "5. Quit"
  choice = gets.chomp
  return choice
end

###################
### Main Programm #
###################
puts "Welcome to the Happitals - shelter management program"
puts "Please give the shelter name: "
shelter_name = gets.chomp
shelter = Shelter.new(shelter_name)
puts "Congrats! #{shelter.name} shelter has been created"

menu_choice = menu
while menu_choice != "5"
  case menu_choice
  when "1"
    puts "What species is the animal?"
    species_animal = gets.chomp
    puts "What's its name?"
    name_animal = gets.chomp
    fst_animal = Animal.new(name_animal, species_animal)
    shelter.animals << fst_animal
  when "2"
    puts "What is client's name?"
    client_name = gets.chomp
    puts "What is client's age?"
    client_age = gets.chomp
    fst_client = Client.new(client_name, client_age)
    shelter.clients << fst_client
  when "3"
    shelter.display_animals
  when "4"
    shelter.display_clients
  else
    puts "Please enter numbers from the menu"
  end
  menu_choice = menu
end

# dog = Animal.new("Sparky", "dog")
# puts dog.name
# glenn = Client.new("Glenn", 30)
# puts glenn.age
# puts shelter.name