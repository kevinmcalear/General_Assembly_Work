class Gladiator
  def initialize(name, weapon)
    @name = name
    @weapon = weapon
  end

  def name
    @name
  end

  def weapon
    @weapon
  end
end

class Arena
  def initialize(name)
    @name = name
    @gladiators = []
  end

  def name
    @name.capitalize
  end

  def gladiators
    @gladiators
  end

  def add(name)
    if @gladiators.length < 2
      @gladiators << name
    else
      return "You can't add third gladiator"
    end
  end
end