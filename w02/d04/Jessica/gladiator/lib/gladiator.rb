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

  def name(name)
    return @name.capitalize
  end

  def fight

  fight_hash = {
    "spear" => "trident",
    "trident" => "club",
    "club" => "spear"
  }

  gladiator1 = self.gladiators[0]
  gladiator2 = self.gladiators[1]

  if fight_hash[gladiator1.weapon] == gladiator2.weapon
    return "#{gladiators[1].name} wins!"
  else
    return "#{gladiators[0].name} wins!"
  end
end


  def add_gladiator(gladiator)
    self.gladiators.push(gladiator)
    if gladiators.length > 2
      return "Too many players!"
    elsif gladiators.length < 2
      return "Not enought people to fight!"
    else
      "Fight"
  end
end

    def gladiators
      return @gladiators
    end

  end