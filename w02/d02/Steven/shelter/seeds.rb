require_relative 'clients_class'
require_relative 'shelter_class'
require_relative 'animal_class'
require_relative 'main'

main_shelter = Shelter.new("Happy Tails!")

bill = Animal.new("Bill", "Parrot")
ed = Animal.new("Ed", "Lizard")
frank = Animal.new("Frank", "Hedgehog")
stella = Animal.new("Stella", "Bulldog")

steve = Person.new("Steve", 30)
jess = Person.new("Jess", 29)
harlan = Person.new("Harlan", 65)
diane = Person.new("Diane", 62)


main_shelter.animals << bill
main_shelter.animals << ed
main_shelter.animals << frank
main_shelter.animals << stella

main_shelter.clients << steve
main_shelter.clients << jess
main_shelter.clients << harlan
main_shelter.clients << diane