class Shelter

  def initialize(name)
    @name = name
    @animals = Array.new
    @clients = Array.new
  end

  def name
    return @name
  end

  def animals
    return @animals
  end

  def clients
    return @clients
  end

  def add_animal(animal)
    @animals.push(animal)
  end

  def add_client(client)
    @clients.push(client)
  end

  def get_client(name_client)
    client = @clients.find do |client|
      client.name == name_client
    end
    return client
  end

  def get_pet(name_animal)
    pet = @animals.find do |animal|
      animal.name == name_animal
    end
  return pet
  end

  def print_clients
    puts "***Shelter Clients***"
    @clients.each do |client|
      puts client.name
    end
  end

  def print_animals
    puts "***Animals in the Shelter***"
    @animals.each do |animal|
      puts animal.name
    end
  end

  def adoption (pet, client)
    animals = client.pets
    if animals.count < 2
      animals.push(pet)
      @animals.delete(pet)
    else
      puts "YOU CANNOT HAVE MORE THAN TWO PETS!!"
    end
  end

  def return (pet, client)
    animals = client.pets
    pet = animals.delete(pet)
    @animals.push(pet)
  end

end