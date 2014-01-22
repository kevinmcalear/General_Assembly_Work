#################
### Seed Some Data
#################
$shelter = Shelter.new("Happitails")
animal_1 = Animal.new("Fluffy", "cat")
animal_2 = Animal.new("Milo", "peacock")
animal_3 = Animal.new("Bruno", "elephant")
$shelter.animals << animal_1
$shelter.animals << animal_2
$shelter.animals << animal_3
jessica = Client.new("Jessica", 24)
$shelter.clients << jessica
jenna = Client.new("Jenna", 24)
$shelter.clients << jessica


