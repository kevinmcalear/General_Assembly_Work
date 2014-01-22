spot = Animal.new("Spot","Dog")
baxter = Animal.new("Baxter","Leopard")
nemo = Animal.new("Nemo","Fish")

sahil = Client.new("Sahil",20,[spot])
bob = Client.new("Bob",45,[baxter])

$shelter = Shelter.new([nemo],[sahil,bob])