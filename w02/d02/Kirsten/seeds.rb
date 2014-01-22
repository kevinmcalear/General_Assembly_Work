
require_relative "happitails"

george = Animal.new("George")
george.species=("dog")
george.add_toy("red ball")

charlie = Animal.new("Charlie")
charlie.species=("dog")
charlie.add_toy("squeeky monkey")

millie = Animal.new("Millie")
millie.species=("cat")
millie.add_toy("mouse toy")

mike = Client.new("Mike")
mike.age=(45)
mike.adopt_pet(george)

alex = Client.new("Alex")
alex.age=(26)
alex.adopt_pet(charlie)

agatha = Client.new("Agatha")
agatha.age=(29)
agatha.adopt_pet(millie)

$aspca = Shelter.new("ASPCA")
$aspca.receive_pet(charlie,alex)
$aspca.receive_pet(millie,agatha)
$aspca.add_client(mike)
$aspca.add_client(alex)
$aspca.add_client(agatha)