require_relative "happitails"

#seeds
myshelter = Shelter.new
client1 = Client.new("Isaac", 26)
animal1 = Animal.new("Fluffy", "dog")
myshelter.clients << client1
myshelter.animals << animal1

#MENU method
def menu
  puts
  puts "MY SHELTER"
  puts "1 Add an animal"
  puts "2 Add a client"
  puts "3 Adopt an animal"
  puts "4 Return an animal"
  puts "5 Display all animals"
  puts "6 Display all clients"
  puts "7 Quit"
  response = gets.chomp.to_i
  return response
end


mychoice = menu
while mychoice != 7
  case mychoice
  when 1
    myshelter.add_animal
  when 2
    myshelter.add_client
  when 3

    puts "CURRENT CLIENTS OF THE SHELTER"
    myshelter.clients.each do |client|
      puts "#{client.name} is #{client.age} years old"
    end
    puts

    puts "Enter the client"
    client_choice = gets.chomp

    client_to_adopt = myshelter.clients.find do |client|
      client.name == client_choice
    end

    puts "CURRENT ANIMALS IN THE SHELTER"
    myshelter.animals.each do |animal|
      puts "#{animal.name} the #{animal.species}"
    end
    puts

    puts "Enter the animal"

    animal_choice = gets.chomp

    animal_object = myshelter.animals.find do |animal|
      animal.name == animal_choice
    end

    client_to_adopt.add_pet(animal_object)
    myshelter.remove_animal(animal_choice)

    puts

  when 4
    puts 
    puts "CURRENT CLIENTS OF THE SHELTER"
    myshelter.clients.each do |client|
      puts "#{client.name} is #{client.age} years old"
    end
    puts

    puts "Enter the client"
    client_choice = gets.chomp

    client_to_return = myshelter.clients.find do |client|
      client.name == client_choice
    end

    puts "Enter the pet this client will return"
    client_to_return.pets.each do |pet|
      puts "#{pet.name} the #{pet.species}"
    end

    animal_choice = gets.chomp

    client_to_return.remove_pet(animal_choice)
    myshelter.animals << animal_object

    puts

  when 5
    puts "CURRENT ANIMALS IN THE SHELTER"
    myshelter.animals.each do |animal|
      puts "#{animal.name} the #{animal.species}"
    end
    puts

  when 6
    puts "CURRENT CLIENTS OF THE SHELTER"
    myshelter.clients.each do |client|
      puts "#{client.name} is #{client.age} years old"
      clientpets = client.pets.map do |pet|
        pet.name
      end
      puts " Current pets: #{ clientpets.join(" ") }" if client.pets.size > 0
    end
    puts
  else
    puts "That is not an option"
    puts
  end
  mychoice = menu
end