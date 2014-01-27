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
    @name = name
    @gladiators = []
  end

  def name
    return @name.capitalize
  end

  def gladiators
    return @gladiators
  end

  def add_gladiator(gladiator)
    if self.gladiators.count > 1
      return "Arena full!"
    else
      @gladiators << gladiator
    end
  end

  def fight_result(gladiator1, gladiator2)
    beats = {
    "spear" => "trident",
    "club" => "spear",
    "trident" => "club"
    }

    if gladiator1.weapon == gladiator2.weapon
      return "Both dead!"
    elsif beats[gladiator1.weapon] == gladiator2.weapon
      return "#{gladiator1.name} is dead!"
    else
      return "#{gladiator2.name} is dead!"
    end

  end

  def fight
    if self.gladiators.size < 2
      return "Not enough gladiators for a fight!"
    else
      return self.fight_result(self.gladiators[0], self.gladiators[1])
    end
  end

end
