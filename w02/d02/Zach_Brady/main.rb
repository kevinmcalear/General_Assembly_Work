require_relative 'models/happitails'
require_relative 'models/seeds'

###################
##### Begin menu loop
###################

while true
  puts
  puts "Welcome to the Happitails Animal Shelter Directory. "
  puts "  - display all animals"
  puts "  - display all clients"
  puts "  - add an animal"
  puts "  - add a client"
  puts "  - adoption"
  puts "  - quit"
  puts

  answer = gets.chomp.downcase
  puts

  case answer

  when "display all animals"
    $happitails.get_animals.each do |animal| 
      puts "Animal name: " + animal.get_name 
      puts "Species: " + animal.get_species
      if animal.get_toys.size != 0
        puts "Toys:  " + animal.get_toys.join(", ")
      end
      puts
    end

  when "display all clients"
   $happitails.get_clients.each do |client| 
     puts "Client name: " + client.get_name 
     puts "Age: " + client.get_age.to_s
     if client.get_pets.size != 0
       puts "Pets:  " + client.get_pets.join(", ")
     end
     puts
   end

 when "add an animal"
  puts "What is the animal's name? "
  name = gets.chomp
  puts "What is the animal's species? "
  species = gets.chomp.downcase
  toys = []
  puts "Does #{name} have any toys? "
  reply = gets.chomp.downcase
  if reply == "yes"
    puts "What is #{name}'s favorite toy? "
    favorite_toy = gets.chomp
    toys << favorite_toy
  end
  new_animal = Animal.new(name, species, toys)
  $happitails.get_animals << new_animal
  puts "#{new_animal.get_name} was added to our shelter's database. "

when "add a client"
  puts "What is the client's name? "
  name = gets.chomp
  puts "What is the client's age? "
  age = gets.chomp.to_i
  pets = []
  puts "Does #{name} have any pets? "
  reply = gets.chomp.downcase
  if reply == "yes"
      # need to update to take in multiple pets
      puts "What pet does #{name} have? "
      pets = gets.chomp
    end
    new_client = Client.new(name, age, pets)
    $happitails.get_clients << new_client
    puts "#{new_client.get_name} was added to our shelter's database. "

  when "adoption"
    puts "Who wants to adopt? "
    client = gets.chomp
    puts "Who do they want to adopt? "
    animal = gets.chomp
    puts "Are they adopting or putting up for adoption?"
    status = gets.chomp
    $happitails.adoption(animal, client)
    
  when "quit"
    exit
    
  else
    puts "Come again? "
  end
end