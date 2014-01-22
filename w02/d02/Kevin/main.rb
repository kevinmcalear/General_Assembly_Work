require 'pry'
require_relative 'models/animal'
require_relative 'models/client'
require_relative 'models/shelter'



puts `clear`
puts "To start off, what would you like to call your shelter?"
shelter_name = gets.chomp
$my_shelter = Shelter.new(shelter_name)

user_input = nil

require_relative 'models/seeds'

while user_input != "Q"

puts `clear`
puts "Welcome to the #{$my_shelter.name} Shelter App!"
puts "-------------------------------------"
puts "please select from the following:"
puts 
puts "( A ) to create an animal."
puts "( C ) to create a client."
puts "( DA ) to display all animals in the shelter."
puts "( DC ) to display all clients in the shelter."
puts "( AA ) to adopt an animal."
puts "( PU ) to put an animal up for adoption."
puts "( Q ) to quit the app."

user_input = gets.chomp.upcase

case user_input

when "A"
  puts `clear`
  puts "What is your animal's name?"
  animal_name = gets.chomp
  puts "What type of animal is it?"
  animal_species = gets.chomp
  puts "Last thing, does #{animal_name} own any toys"
  new_animal = Animal.new(animal_name, animal_species)
  $my_shelter.add_animals(new_animal)

when "C"
  puts `clear`
  puts "What is your client's name?"
  client_name = gets.chomp
  puts "How old is your client?"
  client_age = gets.chomp
  new_client = Client.new(client_name, client_age)
  $my_shelter.add_clients(new_client)

when "DA"
  puts `clear`
  puts "Here is a list of the current animals in our shelter:"
  puts "-----------------------------------------"
  $my_shelter.list_animals
  puts
  puts "------------------------------"
  puts "Press Anything To Go Back Or ( Q ) To Quit."
  user_input = gets.chomp.upcase

when "DC"
  puts `clear`  
  puts "Here is a list of the current clients in our shelter:"
  puts "-----------------------------------------"
  $my_shelter.list_clients
  puts
  puts "------------------------------"
  puts "Press Anything To Go Back Or ( Q ) To Quit."
  user_input = gets.chomp.upcase

  when "AA"
  puts `clear`  
  puts "Here is a list of the current animals in our shelter:"
  puts "-----------------------------------------"
  $my_shelter.list_animals
  puts
  puts "------------------------------"
  puts "Please Tell me what animal you want to adopt."
  desired_animal = gets.chomp
  $my_shelter.list_clients
  puts "Now please tell me what client wants to adopt that animal."
  desired_client = gets.chomp

  specific_animal = $my_shelter.animals.find do |animal|
      animal.name == desired_animal
    end
  specific_client = $my_shelter.clients.find do |client|
      client.name == desired_client
    end
    specific_client.pets << specific_animal
    $my_shelter.animals.delete(specific_animal)
  puts `clear`
  puts "CONTGRATS!! #{desired_client} just adopted #{desired_animal}. What a lucky person!!"
  puts
  puts
  puts "------------------------------"
  puts "Press Anything To Go Back Or ( Q ) To Quit."
  user_input = gets.chomp.upcase

  when "PU"
  puts `clear`  
  puts "Here is a list of the current animals in our shelter:"
  puts "-----------------------------------------"
  $my_shelter.list_clients
  puts
  puts "------------------------------"
  puts "Please Tell me what client wants to return an animal."
  desired_client = gets.chomp
  puts "Now please tell me what animal they want to return."
  desired_animal = gets.chomp

  specific_client = $my_shelter.clients.find do |client|
      client.name == desired_client
    end
  specific_animal = specific_client.pets.find do |animal| 
    animal.name == desired_animal
  end
    
    $my_shelter.animals << specific_animal
    specific_client.pets.delete(specific_animal)
  puts `clear`
  puts "LAME!! #{desired_client} returned #{desired_animal}. You suck."
  puts
  puts "------------------------------"
  puts "Press Anything To Go Back Or ( Q ) To Quit."
  user_input = gets.chomp.upcase

when "Q"

else 
  puts `clear`
  puts "That isn't a valid option. Sorry, try again!"
  puts
  puts "------------------------------"
  puts "Press Anything To Go Back Or ( Q ) To Quit."
  user_input = gets.chomp.upcase
end
end

# binding.pry

puts `clear`
  puts "**********************************"
  puts "THANKS FOR USING OUR APP! :)"


