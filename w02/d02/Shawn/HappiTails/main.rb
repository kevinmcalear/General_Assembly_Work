#HappiTails Animal Shelter App

require_relative 'Animal'
require_relative 'Client'
require_relative 'Shelter'
require_relative 'seeds'



def list_options

    puts "
    __________________________________________

    Welcome to Happy Tails Animal Shelter App
    __________________________________________
    
    Please select from the list of options below:

    (a) Add an Animal
    (b) Add a Client
    (c) Add a Shelter
    (d) View  Animal Directory
    (e) View Client Directory
    (f) Adopt a Pet
    (g) Put an Animal up for Adoption
    (h) Quit

    __________________________________________"
    user_input = gets.chomp
    return user_input
end

menu_choice = list_options
while menu_choice != "h"
  case menu_choice
  when "a"
    puts "




    What's the animal's name?"
    new_animal_name = gets.chomp
    puts "




    What's #{new_animal_name}'s species?"
    new_animal_species = gets.chomp
    new_animal = Animal.new(new_animal_name, new_animal_species)
    $happi_tails_shelter.animals.push(new_animal)
    puts "#{new_animal.name}, a #{new_animal.species}, was added to the HappiTails listing of adoptable pets!"
    puts $happi_tails_shelter.animals.join(", ")
    menu_choice = list_options
   

  when "b"
    puts "




    What's the new client's name?"
    new_client_name = gets.chomp
    puts "




    How old is #{new_client_name}?"
    new_client_age = gets.chomp
    new_client = Client.new(new_client_name, new_client_age)
    puts "




    #{new_client_name} was added to the database of clients!"
    $happi_tails_shelter.clients.push(new_client)
    menu_choice = list_options
    

  when "c"
    puts "




    What's the name of the new shelter?"
    new_shelter_name = gets.chomp
    new_shelter = Shelter.new(new_shelter_name)
    puts "#{new_shelter_name} was added to the database!"
    menu_choice = list_options

  when "d"
      puts "




      Here's the animal directory:
       #{$happi_tails_shelter.animals.join(", ")}"
       menu_choice = list_options

  when "e"
    puts "




    Here's the client directory:"
    puts $happi_tails_shelter.clients.join(", ")
    menu_choice = list_options

  when "f"
    puts "




    Great...I'd love to help you adopt a new pet!"
    $happi_tails_shelter.facilitate_adoption
    menu_choice = list_options

  when "g" 
    puts "




    I'm sorry to hear you'd like to put your pet up for adoption... :(...but I'll help you anyways..."
    $happi_tails_shelter.put_up_for_adoption
    menu_choice = list_options

    
  end
  
  end
