require_relative 'models/animal'
require_relative 'models/client'
require_relative 'models/shelter'


shelter = Shelter.new("Happy Shelter")
client = Client.new("Tahira", 24)
pet = Animal.new("Porter", 1)
shelter.add_animal(pet)
shelter.add_client(client)
shelter.print_animals
shelter.print_clients

shelter.adoption(pet, client)

shelter.print_animals
shelter.print_clients

client.print_pets

shelter.return(pet, client)

shelter.print_animals
shelter.print_clients

client.print_pets
