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
  puts "3. Quit"
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
while menu_choice != "3"
  case menu_choice
  when "1"
    puts "What species is the animal?"
    species_animal = gets.chomp
    puts "What's its name?"
    name_animal = gets.chomp
    fst_animal = Animal.new(name_animal, species_animal)
    shelter.animals << fst_animal
    puts "We have these animals in shelter now: "
    shelter.animals.each {|i| puts "#{i.name} the #{i.species}"}
  when "2"
    puts "What is client's name?"
    client_name = gets.chomp
    puts "What is client's age?"
    client_age = gets.chomp
    fst_client = Client.new(client_name, client_age)
    shelter.clients << fst_client
    puts "Whe have thses clients in our shelter database: "
    shelter.clients.each {|i| puts "#{i.name} and he is #{i.age} old."}
  else
    puts "Please either 3 or press 1 or 2"
  end
  menu_choice = menu
end

# dog = Animal.new("Sparky", "dog")
# puts dog.name
# glenn = Client.new("Glenn", 30)
# puts glenn.age
# puts shelter.name