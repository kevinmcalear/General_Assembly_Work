####################
#####Seed Data
####################

$shelter = Shelter.new("Alan Turing Animal Shelter")

desi = Animal.new("Desi", "Dog")
jasmine = Animal.new("Jasmine", "Cat")
goldie = Animal.new("Goldie", "Fish")
$shelter.animals << desi
$shelter.animals << jasmine

cory = Client.new("Cory", "33")
blair = Client.new("Blair", "30")
$shelter.clients << cory
$shelter.clients << blair