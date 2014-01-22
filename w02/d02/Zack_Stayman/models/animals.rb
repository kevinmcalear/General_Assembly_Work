require 'pry'
# - Animal:
class Animal
  def initialize(name, species)
    @name = name
    @species = species
    @toys = []
  end

  def toys=(toys)
    @toys.push(toys)
  end

  def name
    return @name
  end

  def species
    return @species
  end
end

#   - An animal should have a name.

#   - An animal should have a species.

#   - An animal can have multiple toys, but doesn't start with any.

