# Define classes
class Animal
  def initialize(name)
    @name = name
    @toys = []
  end
  def name
    return @name
  end
  def toys
    return @toys
  end
  def species=(species)
    @species=species
  end
  def species
    return @species
  end
  def add_toy(toy)
    self.toys.push(toy)
  end
end
 # An animal can have multiple toys, but doesn't start with any

class Client
  def initialize(name)
    @name = name
    @client_pets = []
  end
  def name
    return @name
  end
  def client_pets 
    return @client_pets
  end
  def age=(age)
    @age = age
  end
  def age
    return age
  end
  def adopt_pet(pet)
    self.client_pets.push(pet)
  end
  def abandon_pet(pet)
    self.client_pets.delete(pet)
  end
end

class Shelter 
  def initialize(name)
    @name = name
    @pets = []
    @clients = []
  end
  def clients
    return @clients
  end
  def pets
    return @pets
  end
  def receive_pet(pet,client)
    self.pets.push(pet)
    client.abandon_pet(pet)
  end
  def add_pet(pet)
    self.pets.push(pet)
  end
  def adopt_out_pet(pet,client)
    self.pets.delete(pet)
    client.adopt_pet(pet)
  end
  def remove_pet(pet)
    self.pets.delete(pet)
  end
  def add_client(client)
    self.clients.push(client)
  end
  def remove_client(client)
    self.clients.delete(client)
  end
  def list_pets
    self.pets.each {|x| puts x.name}
  end
  def list_clients
    self.clients.each {|x| puts x.name}
  end
end


# A shelter should be able to display all of its clients.
#   display client array
# A shelter should be able to display all of its animals.
#   display pets array
# A shelter should be able to facilitate an adoption (one of its clients adopting one of the animals from shelter)\
#   remove pet from pets array
# A shelter should be able to facilitate a return (one of its clients returning his/her pet to the shelter)
#   add pet to pets array

# Commit 1









