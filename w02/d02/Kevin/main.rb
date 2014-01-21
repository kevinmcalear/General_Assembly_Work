require 'pry'
require_relative 'models/animal'
require_relative 'models/client'
require_relative 'models/shelter'

# fluffy = Animal.new("Fluffy", "Dog")
# jeffery = Animal.new("Jeffery", "Cat")
# petie = Animal.new("Petie", "Parrot")

# puts fluffy.name
# puts fluffy.species

# bob = Client.new("Bob", 23)

# puts bob.name
# puts bob.age

# the_shelter = Shelter.new("The Shelter, Yo.")

# puts the_shelter.name

# fluffy.add_toys("Bone")
# fluffy.add_toys("Sock")
# fluffy.add_toys("Worm")

# puts fluffy.toys

# bob.add_pets(fluffy.make_hash)

# the_shelter.add_animals(jeffery.make_hash)
# the_shelter.add_animals(petie.make_hash)
# the_shelter.add_clients(bob.make_hash)

# puts the_shelter.make_hash
puts `clear`
puts "To start off, what would you like to call your shelter?"
shelter_name = gets.chomp
my_shelter = Shelter.new(shelter_name)

user_input = nil
while user_input != "Q"

puts `clear`
puts "Welcome to the #{my_shelter.name} Shelter App!"
puts "-------------------------------------"
puts "please select from the following:"
puts 
puts "( A ) to create an animal."
puts "( C ) to create a client."
puts "( DA ) to display all animals in the shelter."
puts "( DC ) to display all clients in the shelter."
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
  my_shelter.add_animals(new_animal.make_hash)

when "C"
  puts `clear`
  puts "What is your client's name?"
  client_name = gets.chomp
  puts "How old is your client?"
  client_age = gets.chomp
  new_client = Client.new(client_name, client_age)
  my_shelter.add_clients(new_client.make_hash)

when "DA"
  puts `clear`
  puts "Here is a list of the current animals in our shelter:"
  puts "-----------------------------------------"
  my_shelter.list_animals
  puts
  puts "------------------------------"
  puts "Press Anything To Go Back Or ( Q ) To Quit."
  user_input = gets.chomp.upcase

when "DC"
  puts `clear`  
  puts "Here is a list of the current clients in our shelter:"
  puts "-----------------------------------------"
  my_shelter.list_clients
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

binding.pry

puts `clear`
  puts "**********************************"
  puts "THANKS FOR USING OUR APP! :)"


