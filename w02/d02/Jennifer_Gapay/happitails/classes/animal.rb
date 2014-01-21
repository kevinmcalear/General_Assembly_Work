# class Animal < Shelter
class Animal
  def initialize (name, species)
    @name = name
    @species = species
    @toys = []
  end
 
  def name 
    return @name
  end

  def species
    return@species
  end

  def toys
    return @toys
  end
end

## add animals ##
lassie=Animal.new("Lassie", "Dog", "Ball")
benji=Animal.new("benji", "Dog")
