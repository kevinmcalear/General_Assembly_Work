require_relative 'Animal'
require_relative 'Client'
require_relative 'Shelter'

$happi_tails_shelter = Shelter.new("Happy Tails Shelter")

humphrey = Animal.new("Humphrey", "Dog")
lizzy = Animal.new("Lizzy", "Lizard")
alfred = Animal.new("Alfred", "Elephant")

shawn = Client.new("Shawn", 24)
christina = Client.new("Christina", 48)
larry = Client.new("Larry", 50)

$happi_tails_shelter.animals.push(humphrey)
$happi_tails_shelter.animals.push(lizzy)
$happi_tails_shelter.animals.push(alfred)

$happi_tails_shelter.clients.push(shawn)
$happi_tails_shelter.clients.push(christina)
$happi_tails_shelter.clients.push(larry)
