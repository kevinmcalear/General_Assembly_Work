class Animal
  attr_reader :name, :species 
  attr_accessor:toys
  #harden

  def initialize(name, species)
    @name = name
    @species = species
    @toys = []
  end

end