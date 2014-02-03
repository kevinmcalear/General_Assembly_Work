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

  def add(gladiator)
    return @gladiators.push(gladiator)
  end

  def fight(glad_1, glad_2)
    beats = {
      "Trident" => "Spear",
      "Spear" => "Club",
      "Club" => "Trident"
    }
    if gladiators. size == 2
      if gladiators.first.weapon == gladiators.last.weapon
        gladiators.clear
      elsif beats[gladiators.first.weapon] == gladiators.last.weapon
        gladiators.delete_at(1)
      else
        gladiators.delete_at(0)
      end
    end

  end

end

end
