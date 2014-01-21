require_relative 'models/animal'
require_relative 'models/client'
require_relative 'models/shelter'

def get_pet()
  puts "Please enter the animal's name: "
  name = gets.chomp
  puts "Please enter the animal's species: "
  species = gets.chomp
  animal = Animal.new(name, species)
  puts "How many toys does the animal have: "
  toys_count = gets.chomp.to_i
  i = 1
  while (i <= toys_count)
    puts "Please enter toy description (#{i}/#{toys_count}):"
    toy = gets.chomp
    animal.add_toy(toy)
    i += 1 
  end
  return animal
end

def get_client()
  puts "Please enter the client's name: "
  name = gets.chomp
  puts "Please enter the clients's age: "
  age = gets.chomp
  client = Client.new(name, age)
  puts client.name
  puts "How many pets does the client have?"
  pets_count = gets.chomp.to_i
  i = 1
  while (i <= pets_count)
    animal = get_pet()
    client.add_pet(animal)
    i += 1 
  end
  return client
end

## MAIN

shelter = Shelter.new("Happy Shelter")

answer = 1

while (answer != 6)
  puts "*** Welcome to #{shelter.name.upcase} ***"
  puts "Please select an option: "
  puts "1 - Create an animal profile"
  puts "2 - Create a client profile"
  puts "3 - Create a shelter"
  puts "4 - Show all animals in the shelter"
  puts "5 - Show all shelter clients"
  puts "6 - Quit"
  answer = gets.chomp.to_i

  case answer
  when 1
    animal = get_pet()
    shelter.add_animal(animal)
  when 2
    client = get_client()
    shelter.add_client(client)
  when 3
    puts "Please enter the name of the shelter:"
    new_shelter = gets.chomp
    Shelter.new("#{new_shelter}")
  when 4
    shelter.print_animals
  when 5
    shelter.print_clients
  when 6
    puts "Thanks for visiting #{shelter.name.upcase}!!"
  else
    puts "Please select a valid choice"
  end
end



# shelter.add_animal(pet)
# shelter.add_client(client)
# shelter.print_animals
# shelter.print_clients

# shelter.adoption(pet, client)

# shelter.print_animals
# shelter.print_clients

# client.print_pets

# shelter.return(pet, client)

# shelter.print_animals
# shelter.print_clients

# client.print_pets
