require_relative "shelter"
require_relative "client"
require_relative "animal"
require_relative "cat_lady"

$shelter = Shelter.new("HappiTails")

steve = Client.new("Steve", 32)
greg = Client.new("Greg", 20)
toni = CatLady.new("Tony", 44)

oreo = Animal.new("Oreo", "dog")
dougie = Animal.new("Dougie", "cat")
reed = Animal.new("Reed", "cat")
donny = Animal.new("Donny", "pig")

$shelter.add_client(steve, greg, toni)
$shelter.add_animal(oreo, dougie, reed, donny)