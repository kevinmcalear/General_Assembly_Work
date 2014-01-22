
#################
### Seed Some Data
#################
$shelter = Shelter.new("Happitails")
animal_1 = Animal.new("Dakota", "dog", "ball")
animal_2 = Animal.new("Socks", "cat", "yarn")

$shelter.animals << animal_1
$shelter.animals << animal_2

client_1 = Client.new("Rory", "25")
client_2 = Client.new("Bob", "30")
$shelter.clients << client_1
$shelter.clients << client_2
