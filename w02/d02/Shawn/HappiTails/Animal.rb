#HappiTails Animal Shelter
#Animal Object Definition


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

  def to_s
    return "#{name} (#{species})"
  end
end






