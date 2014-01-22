fluffy = Animal.new("Fluffy", "Dog")
jeffery = Animal.new("Jeffery", "Cat")
petie = Animal.new("Petie", "Parrot")
kermit = Animal.new("Kermit", "Frog")
scooby = Animal.new("Scooby", "Dog")


bob = Client.new("Bob", 23)
sam = Client.new("Sam", 26)
jim = Client.new("Jim", 54)
frank = Client.new("Frank", 34)


fluffy.add_toys("Bone")
fluffy.add_toys("Sock")
fluffy.add_toys("Worm")

jeffery.add_toys("Catnip")
jeffery.add_toys("Furball")

kermit.add_toys("A Toy Pig")

scooby.add_toys("Scooby Snack")
scooby.add_toys("A Squirtgun")


bob.add_pets(fluffy)
jim.add_pets(kermit)
jim.add_pets(scooby)

$my_shelter.add_animals(jeffery)
$my_shelter.add_animals(petie)

$my_shelter.add_clients(bob)
$my_shelter.add_clients(sam)
$my_shelter.add_clients(jim)
$my_shelter.add_clients(frank)