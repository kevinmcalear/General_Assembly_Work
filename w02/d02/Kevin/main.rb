require 'pry'
require_relative 'models/animal'
require_relative 'models/client'
require_relative 'models/shelter'

fluffy = Animal.new("Fluffy", "Dog")
jeffery = Animal.new("Jeffery", "Cat")
petie = Animal.new("Petie", "Parrot")

puts fluffy.name
puts fluffy.species

bob = Client.new("Bob", 23)

puts bob.name
puts bob.age

the_shelter = Shelter.new("The Shelter, Yo.")

puts the_shelter.name

fluffy.add_toys("Bone")
fluffy.add_toys("Sock")
fluffy.add_toys("Worm")

puts fluffy.toys

bob.add_pets(fluffy.make_hash)

the_shelter.add_animals(jeffery.make_hash)
the_shelter.add_animals(petie.make_hash)
the_shelter.add_clients(bob.make_hash)

puts the_shelter.make_hash

# binding.pry 