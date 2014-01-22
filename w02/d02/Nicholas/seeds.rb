$shelter = Shelter.new("Paws4U")
puts "Your new Animal Shelter #{$shelter.name} was just created!"

luke = Animal.new("Luke", "Cat")
snowball = Animal.new("Snowball", "Cat")
fido = Animal.new("Fido", "Dog")
rupert = Animal.new("Rupert", "Dog")

$shelter.animals << luke
$shelter.animals << snowball
$shelter.animals << fido
$shelter.animals << rupert

nicholas = Client.new("Nicholas", 31)
stefanie = Client.new("Stefanie", 25)
kevin = Client.new("Kevin", 27)
anthony = Client.new("Anthony", 26)

$shelter.clients << nicholas
$shelter.clients << stefanie
$shelter.clients << kevin
$shelter.clients << anthony

