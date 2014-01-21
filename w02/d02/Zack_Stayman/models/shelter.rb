require 'pry'
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
    return @clients
  end

  def add_animal=(animal)
    self.animals.push(animal)
  end

  def add_client=(client)
    self.clients.push(client)
  end
end