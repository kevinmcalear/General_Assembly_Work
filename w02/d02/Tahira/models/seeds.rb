require_relative 'animal'
require_relative 'client'

$animal1 = Animal.new("Porter", "Dog")
$animal2 = Animal.new("Suki", "Bird")
$animal3 = Animal.new("Max", "Chamelion")
$animal4 = Animal.new("Fluffy", "Cat")
$animal5 = Animal.new("Bubbles", "Fish")

$client1 = Client.new("Tahira", 24)
$client2 = Client.new("John", 19)
$client3 = Client.new("Jay", 11)
$client4 = Client.new("Tonia", 24)
$client5 = Client.new("Oliver", 24)


$shelter.add_animal($animal1)
$shelter.add_animal($animal2)
$shelter.add_animal($animal3)
$shelter.add_animal($animal4)
$shelter.add_animal($animal5)
$shelter.add_client($client1)
$shelter.add_client($client2)
$shelter.add_client($client3)
$shelter.add_client($client4)
$shelter.add_client($client5)