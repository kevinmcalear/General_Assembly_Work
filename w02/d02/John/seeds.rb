#initialize some seed data
$shelter1 = Shelter.new("Happy Pets")
$client1 = Client.new("Jeff", 33)
$client2 = Client.new("Janelle", 45)
$animal1 = Animal.new("Buddy", 3)
$animal2 = Animal.new("Jet", 2)

$shelter1.add_to_animals_list($animal1)
$shelter1.add_to_animals_list($animal2)

$shelter1.add_to_clients_list($client1)
$shelter1.add_to_clients_list($client2)