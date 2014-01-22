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

  # When we display the animal using puts, the to_s 
  # method is called to convert the animal object into a string
  def to_s
    "#{@name} is a #{@species} that loves #{@toys.join(', ')}"
  end
end
