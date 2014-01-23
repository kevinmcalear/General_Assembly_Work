require_relative 'models/animal'
require_relative 'models/client'
require_relative 'models/shelter'
$shelter = Shelter.new("Happy Shelter")
require_relative 'models/seeds'


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

## MAIN MENU LOOP
answer = 1

while (answer != 8)
  puts "*** Welcome to #{$shelter.name.upcase} ***"
  puts "Please select an option: "
  puts "1 - Create an animal profile"
  puts "2 - Create a client profile"
  puts "3 - Create a shelter"
  puts "4 - Show all animals in the shelter"
  puts "5 - Show all shelter clients"
  puts "6 - Adopt pet"
  puts "7 - Return pet"
  puts "8 - Quit"
  answer = gets.chomp.to_i

  case answer
  when 1
    animal = get_pet()
    $shelter.add_animal(animal)
  when 2
    client = get_client()
    $shelter.add_client(client)
  when 3
    puts "Please enter the name of the shelter:"
    new_shelter = gets.chomp
    Shelter.new("#{new_shelter}")
  when 4
    $shelter.print_animals
  when 5
    $shelter.print_clients
  when 6
    puts "What animal do you want to adopt?"
    name_animal = gets.chomp
    puts "What's your name?"
    name_client = gets.chomp
    client = $shelter.get_client(name_client)
    animal = $shelter.get_pet(name_animal)
    $shelter.adoption(animal, client)
  when 7
    puts "What's your name?"
    name_client = gets.chomp
    puts "What animal do you want to return?"
    name_animal = gets.chomp
    client = $shelter.get_client(name_client)
    animal = client.get_pet(name_animal)
    $shelter.return(animal, client)
  when 8
    puts "Thanks for visiting #{$shelter.name.upcase}!!"
  else
    puts "Please select a valid choice!"
  end
end

