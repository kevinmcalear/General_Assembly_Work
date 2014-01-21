require_relative "shelter"
require_relative "client"
require_relative "animal"

def display_menu
  3.times {puts}
  puts "Pick an option from the menu:"
  puts "1) Create an animal"
  puts "2) Create a client"
  puts "3) Display Animals"
  puts "4) Display Clients"
  puts "5) Quit"
end

def execute_choice(choice, shelter)
  case choice
  when "1"
    create_animal(shelter)
  when "2"
    create_client(shelter)
  when "3"
    shelter.display_animals
  when "4"
    shelter.display_clients
  when "5"
    return :done
  end

  nil
end

def create_animal(shelter)
  puts "Animal info"
  print "Name: "
  name = gets.chomp
  print "Species: "
  species = gets.chomp

  animal = Animal.new(name, species)
  shelter.add_animal(animal)
end

def create_client(shelter)
  puts "Client info"
  print "Name: "
  name = gets.chomp
  print "age: "
  age = gets.chomp

  client = Client.new(name, age)
  shelter.add_client(client)
end


shelter = Shelter.new("HappiTails")

4.times {puts}
puts "Welcome to #{shelter.name}!"

done = false

until done
  display_menu
  task = execute_choice(gets.chomp, shelter)
  done = true if task == :done
end