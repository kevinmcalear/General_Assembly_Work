class Animal
  def initialize(animal_name, species)
    @animal_name = animal_name
    @species = species
  end

#getter methods for animal_name & species & toys & all_animals
  def animal_name
    return @animal_name
  end

  def species
    return @species
  end

  def toys
    return @toys
  end

def to_s
  return "#{animal_name}, #{species}"
end
end