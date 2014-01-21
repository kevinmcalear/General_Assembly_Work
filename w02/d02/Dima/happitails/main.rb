require_relative'animal'
require_relative'client'
require_relative'shelter'

def menu
end

dog = Animal.new("Sparky", "dog")
puts dog.name
glenn = Client.new("Glenn", 30)
puts glenn.age
local = Shelter.new("Local Shelter")
puts local.name
