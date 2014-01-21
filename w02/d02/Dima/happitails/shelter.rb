class Shelter
  def initialize(name)
    @name = name
    @animals = []
    @clients = []
  end

  def name
    @name
  end

  def animals
    @animals
  end

  def clients
    @clients
  end

  def add_animal
    animal_in_shelt = Animal.new
    self.animals << animal_in_shelt
  end 
end
