class Animal
  def initialize(name, species)
    #initialize name, species
    @name = name
    @species = species

    #initialize empty toys array
    @toys = []
  end

  def name
    return @name
  end

  def species
    return @species
  end

  def toys
    return @toys
  end

end