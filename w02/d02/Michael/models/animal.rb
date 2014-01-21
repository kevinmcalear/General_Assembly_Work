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
    @toys
  end 
  def create_toy_array(array)
    self.toys.push(array)
  end 
end 

##TEST###
# rover = Animal.new("Rover", "beagle")
# rover.create_toy_array(["Ball","Frisbee"])
# puts rover.name
# puts rover.species
# puts rover.toys