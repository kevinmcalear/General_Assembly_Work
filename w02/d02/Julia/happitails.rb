require_relative 'client_class'
require_relative 'shelter_class'
require_relative 'animal_class'
require_relative 'seed.rb'
require 'pry'


#initialize a new shelter

spca = Shelter.new("spca")

def main_menu
  puts "What would you like to do?
  • [ANIMAL] – Create an Animal 
  • [CLIENT] – Create a Client 
  • [SHELTER] – Create a Shelter
  • [SHOW ANIMALS] – Show all Animals
  • [SHOW CLIENTS] – Show all Clients
  • [ADOPT] – Adopt an Animal 
  • [RETURN] – Return an Animal
  • [QUIT] – Quit"
end
puts main_menu
choice = gets.chomp.upcase

while choice != "QUIT"
  if choice == "ANIMAL"
    puts spca.add_animal
    puts "Would you like to add another animal? (yes/no)"
    add_animal_choice = gets.chomp.upcase
      while add_animal_choice == "YES"
        puts spca.add_animal
        puts "Would you like to add another animal? (yes/no)"
        add_animal_choice = gets.chomp.upcase
      end
      puts main_menu
      choice = gets.chomp.upcase
  elsif choice == "CLIENT"
    puts spca.add_client
    puts "Would you like to add another client? (yes/no)"
    add_client_choice = gets.chomp.upcase
    while add_client_choice == "YES"
      puts spca.add_client
      puts "Would you like to add another client? (yes/no)"
      add_client_choice = gets.chomp.upcase
    end
      puts main_menu
      choice = gets.chomp.upcase
  elsif choice == "SHELTER"
    puts spca.add_shelter
    puts main_menu
    choice = gets.chomp.upcase
  elsif choice == "SHOW ANIMALS"
    spca.all_animals.each do |animal|
      puts animal
    end
    puts main_menu
    choice = gets.chomp.upcase
  elsif choice == "SHOW CLIENTS"
    #binding.pry
    spca.all_clients.each do |client|
      puts client
    end
      puts main_menu
      choice = gets.chomp.upcase
  elsif choice == "ADOPT"
    puts "What is your name?"
    spca.all_clients.each do |client|
      puts client
    end
    client_name = gets.chomp
    puts "Which animal would you like to adopt?"
     spca.all_animals.each do |animal|
      puts animal
    end
    animal_name = gets.chomp
    #add the animal to the client's pets' array
    #array name is pets client's name is client_name
    #find the animal
    animal = spca.all_animals.find do |animal|
      animal.animal_name == animal_name
    end
    #find client
    client = spca.all_clients.find do |client|
      client.client_name == client_name
    end
    #remove the animal from the shelter
    animal_to_add_to_client = spca.remove_animal(animal_name)
    client.pets.push(animal_to_add_to_client)
    puts main_menu
    choice = gets.chomp.upcase
  elsif choice == "RETURN"
    #ask for the client's name
    puts "What is your name?"
    spca.all_clients.each do |client|
      puts client
    end
    client_name = gets.chomp
    #find client
    client = spca.all_clients.find do |client|
      client.client_name == client_name
    end
    #show a list of the client's pets and ask which they'd like to return
    puts "Which animal would you like to return?"
    return_animal = gets.chomp
     #find the animal
    animal = client.pets.find do |animal|
      animal.animal_name == animal_name
    end
    animal_to_return = client.pets.delete(animal)
    spca.all_animals.push(animal)
    puts main_menu
    choice = gets.chomp.upcase
  else
    puts "Ooops! Not a valid option. Please enter a valid choice."
    choice = gets.chomp.upcase
end
end

puts "Goodbye!"