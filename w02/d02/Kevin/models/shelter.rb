class Shelter
  def initialize(name)
    @name = name
    @animals = []
    @clients = []
  end

  def name
    return @name
  end

  def animals
    return @animals
  end

  def clients
    @clients
  end

  def add_animals(animal)
    @animal = animal
    @animals << @animal
  end

  def add_clients(client)
    @client = client
    @clients << @client
  end

  def list_animals
    @animals.each {|animal| puts "#{animal.name} the #{animal.species}." }
  end

  def list_clients
    @clients.each {|client| puts "#{client.name} who is #{client.age} years old that has #{client.pets.map {|x| x.name}} animals."}
  end

  # def make_hash
  #   return {:name => @name, :animals => @animals, :clients => @clients}
  # end

  # def give_animal(animal, client)

  #   specific_animal = my_shelter.animals.find do |animal|
  #     animal.name == animal
  #   end
    
  #   find_animal = @animals.find { | animal | animal.name == animal}
  #   find_client = @clients.find { | client | clientl.name == client}
  #   @clients[find_client].pets << animal
  #   @animals.delete(animal)

  # end

  def animal_return(animal, client)

    @animals << animal
    # @find_animal = @animals.index { | animal | animal[:name] == animal}
    @find_client = @clients.index { | client | clientl[:name] == client}
    @clients[@find_client][:pets].delete(animal) 

  end
end