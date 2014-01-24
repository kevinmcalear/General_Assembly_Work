class Gladiator
  def initialize(name)
    @name = name
    @weapons = ["trident", "spear", "club"]
  end
  def name
    return @name
  end
  def weapon
    weapon = @weapons.sample
    return weapon
  end 
end

class Arena
  def initialize(name)
    @name = name
    @gladiators = []
    @beats = {
      "trident" => "spear",
      "spear" => "club",
      "club" => "trident"
    }
  end
  def name
    return @name.capitalize
  end
  def gladiators
    return @gladiators
  end
  def add_gladiator(gladiator)
    if gladiators.count == 2
      return "Arena is full!"
    else
    @gladiators.push(gladiator)
  end
  end
  def beats
    return beats
  end
  def fight
    gladiator_1 = gladiators[0]
    gladiator_2 = gladiators[1]
    weapon_1 = gladiator_1.weapon
    weapon_2 = gladiator_2.weapon
    if weapon_1 == weapon_2
      return "Both die!"
    elsif 
      beats[:weapon_1] == weapon_2
      return "#{gladiator_2} wins!"
    else
      return "#{gladiator_1} wins!"
    end
  end
end


