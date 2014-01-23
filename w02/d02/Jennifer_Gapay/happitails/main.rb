cdrequire_relative "classes/animal"
require_relative "classes/client"
require_relative "classes/shelter"
require 'pry'

## MENU
def print_out_your_choices_and_return_the_choice
  puts "Choose an option:"
  puts "1. Create an Animal"
  puts "2. Create a Client"
  # puts "3. Display all Animals"
  # puts "4. Display all Clients"
  puts "5. Quit"
  menu_response = gets.chomp.to_i
  return menu_response
end

# - We should create a new shelter
happitails = Shelter.new("HappiTails")


# - We should display a menu of options for the user to choose from:
choice = print_out_your_choices_and_return_the_choice

# - When creating an animal 
if choice == 1
  # the user is prompted for information like names, age etc. 
  puts "What kind of animal?"
  animal_species = gets.chomp
  puts "What's the name?"
  animal_name = gets.chomp

  # Newly created animals 
  new_animal = Animal.new(animal_name, animal_species)

  # animals should be added to the shelter
  happitails.add(new_animal)

# - When creating a client
elsif choice == 2
  # the user is prompted for information like names, age etc. 
  puts "What's the name of the client?"
  client_name = gets.chomp
  puts "How old is the client?"
  client_age = gets.chomp

  # Newly created clients
  new_client = Client.new(client_name, client_age)

  # clients should be added to the shelter
happitails.add(new_client)

# def display_all_animals 
#   display_all_animals = (Animals name + species + toys)
# end

# # - Display all animals
# elsif choice == 3
#   puts display_all_animals

# if the choice is 5 then quit!
else choice == 5


end

binding.pry
