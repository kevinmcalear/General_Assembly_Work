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

  def make_hash
    return {:name => @name, :animals => @animals, :clients => @clients}
  end

  def give_animal(animal, client)

    # @find_animal = @animals.index { | animal | animal[:name] == animal}
    # @find_client = @clients.index { | client | clientl[:name] == client}
    # @animals[@find_animal][:pets] << animal

  end

  def animal_return(animal, client)
  end
end