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
    return @name
  end

  def gladiators
    return @gladiators
  end

  def add_gladiator(gladiator)
    self.gladiators << gladiator unless self.gladiators.length > 1
  end

  def remove_gladiator(name)
    dead_gladiator = self.gladiators.find do |gladiator| 
      gladiator.name == name
    end
    self.gladiators.delete(dead_gladiator)
  end

  def entertained?
    if self.gladiators[0].name == "Maximus" || self.gladiators[1].name == "Maximus"
      return "Entertained"
    else
      return "Not entertained"
    end
  end

  def fight
    return if self.gladiators.length < 2

    winner = {
              "club" => "spear",
              "trident" => "club",
              "spear" => "trident" }

    gladiator1 = self.gladiators[0]
    gladiator2 = self.gladiators[1]

    if gladiator1.name == "Maximus"
      self.remove_gladiator(gladiator2.name)
    elsif gladiator2.name == "Maximus"
      self.remove_gladiator(gladiator1.name)
    elsif gladiator1.weapon == gladiator2.weapon
      self.remove_gladiator(gladiator1.name)
      self.remove_gladiator(gladiator2.name)
    elsif winner[gladiator1.weapon] == gladiator2.weapon
      self.remove_gladiator(gladiator1.name)
    else
      self.remove_gladiator(gladiator2.name)
    end
  end


end