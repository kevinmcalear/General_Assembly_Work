class Animal
  def initialize(name, species)
    @name = name
    @species = species

    @toys = []
  end

  def name 
    return @name
  end

  def species
    return @species
  end

  def add_toy(toy)
    @toys.push(toy)
  end


end