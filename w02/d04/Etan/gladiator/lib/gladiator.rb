class Gladiator
  def initialize(name, weapon)
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
  def initialize(name)
    @name = name.capitalize
    @gladiators = []
  end

  def name
    return @name
  end

  def gladiators
    return @gladiators
  end

  def add_gladiators(gladiator1, gladiator2)
    self.gladiators().push(gladiator1, gladiator2)
    if @gladiators.count > 2
      return false
    else
      return gladiators
    end
  end

  def fight
  end
end

