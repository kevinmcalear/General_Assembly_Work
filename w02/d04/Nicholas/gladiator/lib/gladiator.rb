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
    @name = name.capitalize!
    @gladiators = []
  end

  def name
    return @name
  end

  def gladiators
    return @gladiators
  end

  def add_gladiators(name)
    if gladiators.count < 2
    gladiators << name
    puts gladiators
    else
    puts "No more gladiators allowed in arena!"
    end
  end

  def fight
    glad1 = gladiators[0]
    glad2 = gladiators[1]
    beats = {
            "Trident" => "Spear",
            "Spear" => "Club",
            "Club" => "Trident"}
      if beats[glad1.weapon] == glad2.weapon
        return "#{glad1.name} wins!"
      elsif glad1.weapon == glad2.weapon
        return "Both are dead!"
      else
        return "#{glad2.name} wins!"
      end
    end
end
