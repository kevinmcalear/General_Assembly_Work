class Gladiator
  def initialize (name, weapon)
    @name = name
    @weapon = weapon
  end
  def name
    return @name
  end
  def weapon
    return @weapon
  end
end


class Arena
  def initialize (name, gladiators)
    @name = name
    @gladiators = []
  end
  def gladiators 
    return @gladiators
  end
  def name
    return @name.capitalize
  end

end

