require_relative 'models/shelter'
require_relative 'models/person'
require_relative 'models/animal'
require_relative 'seeds'

def menu
  puts `clear`
  puts "*** HappiTails Animal Shelter ***\n\n"
  puts '1 : List Animals'
  puts '2 : List Clients'
  puts '3 : Create Animal'
  puts '4 : Create Client'
  puts '5 : Adopt Animal'
  puts '6 : Return Animal'
  puts "Q : Quit\n\n"
  print '--> '
  gets.chomp
end

def create_animal
  print "Name: "
  name = gets.chomp
  print "Age: "
  age = gets.to_i
  print "Gender: "
  gender = gets.chomp
  print "Species: "
  species = gets.chomp
  print "Toys: "
  toys = gets.chomp.split
  $shelter.animals[name] = Animal.new(name, age, gender, species)
  $shelter.animals[name].toys = toys
end

def create_client
  print "Name: "
  name = gets.chomp
  print "Age: "
  age = gets.to_i
  print "Gender: "
  gender = gets.chomp
  print "Kids: "
  kids = gets.to_i
  $shelter.clients[name] = Person.new(name, age, gender, kids)
end

response = menu
while response != 'Q'
  case response
  when '1'
    puts $shelter.display_animals
    gets
  when '2'
    puts $shelter.display_clients
    gets
  when '3'
    create_animal
  when '4'
    create_client
  when '5' 
    $shelter.adopt_animal
  when '6' 
    $shelter.return_animal
  end

  response = menu
end
