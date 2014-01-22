require_relative 'happitails_classes'
require_relative 'seeds'

#################
#### Menu Method
#################
def menu
  puts
  puts "Choose an option:"
  puts "   1. Add an animal"
  puts "   2. Add a client"
  puts "   3. Create a shelter"
  puts "   4. List all of the pets for adoption"
  puts "   5. List all of the clients"
  puts "   6. Adopt a pet"
  puts "   7. Return a pet"
  puts "   8. Quit"
  response = gets.chomp
  return response
end

puts `clear`
puts "Welcome to #{$happitails.shelter_name}!"
menu_response = menu

while menu_response != "8"
  case menu_response
  when "1"
    puts `clear`
    $happitails.add_animal 
  when "2"
    puts `clear`
    $happitails.add_client
  when "3"
    puts "What is the name of your shelter?"
    new_shelter_name = gets.chomp
    new_shelter = Shelter.new(new_shelter_name)
    puts "#{new_shelter_name} has been added, but we think #{shelter_name} is better!"
  when "4"
    puts `clear`
    $happitails.list_animals
  when "5"
    puts `clear`
    $happitails.list_clients
  when "6"
    puts `clear`
    puts "Which client is ready to adopt?"
    #List clients
    $happitails.list_clients
    adopter = gets.chomp

    puts "What is the name of the pet #{adopter} would like to adopt?"
    #List each animal they can adopt
    $happitails.list_animals
    adoptee = gets.chomp
    #Find pet
    adoptee_pet = $happitails.animals.find do |animal|
      animal.animal_name == adoptee
    end
    #Find the client to add pet to
    adopter_client = $happitails.clients.find do |client|
      client.client_name == adopter
    end
    #Add animal to client pet array, then delete from shelter
    adopter_client.add_pet(adoptee_pet)
    $happitails.delete_pet(adoptee_pet)
  when "7"
    puts `clear`
    puts "Which client is returning a pet?"
    #List clients and find client
    $happitails.list_clients
    returner = gets.chomp
    returner_client = $happitails.clients.find do |client|
      client.client_name == returner
    end

    puts "What is the name of the pet #{returner} would like to give back?"
    #List each animal they can adopt
    returner_client.list_pets
    returned = gets.chomp
    returned_pet = returner_client.pets.find do |pet|
      pet.animal_name == returned
    end
    puts `clear`
    returner_client.give_back_pet(returned_pet)
    $happitails.reclaim_pet(returned_pet)
  else
    puts "Sorry, that was not an option."
  end
  menu_response = menu
end

puts "Thank you for visiting #{$happitails.shelter_name}!"

