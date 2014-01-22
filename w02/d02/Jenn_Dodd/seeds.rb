require_relative 'happitails_classes'

shelter_name = "Happitails"
$happitails = Shelter.new(shelter_name)


#################
#### Pets!
#################

timmy = Animal.new("Timmy", "turtle")
ellie = Animal.new("Ellie", "elephant")
peter = Animal.new("Peter", "pteradactyl")
steve = Animal.new("Steve", "squirrel")
henry = Animal.new("Henry", "hippo")
henny = Animal.new("Henny", "hen")


#################
#### Clients
#################

jenn = Client.new("Jenn", 26)
joey = Client.new("Joey", 43)
tim = Client.new("Tim", 33)

joey.add_pet(henry)
joey.add_pet(steve)

tim.add_pet(timmy)

$happitails.animals().push(ellie)
$happitails.animals().push(peter)
$happitails.animals().push(henny)


$happitails.clients().push(jenn)
$happitails.clients().push(joey)
$happitails.clients().push(tim)
