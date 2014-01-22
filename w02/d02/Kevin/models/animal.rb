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

  def toys
    return @toys
  end

  def add_toys(toy)
    @toy = toy
    @toys << @toy
  end

  # def make_hash
  #   return {:name => @name, :species => @species, :toys => @toys}
  # end
end