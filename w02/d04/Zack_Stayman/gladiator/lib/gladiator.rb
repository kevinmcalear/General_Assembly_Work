require 'pry'
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
    if self.gladiators.length < 2
      self.gladiators.push(gladiator)
    else
      return "There cannot be more than two gladiators in the arena"
    end
  end
  def fight
    beats = {
      "Spear" => "Trident",
      "Club" => "Spear",
      "Trident" => "Club"
    }
    # binding.pry
    gladiator_1 = self.gladiators[0]
    gladiator_2 = self.gladiators[1]
    if beats[gladiator_1.weapon] == gladiator_2.weapon
      self.gladiators.delete(gladiator_1)
      return "#{gladiator_2.name} defeats #{gladiator_1.name}"
    elsif beats[gladiator_2.weapon] == gladiator_1.weapon
      self.gladiators.delete(gladiator_2)
      return "#{gladiator_1.name} defeats #{gladiator_2.name}"
    elsif gladiator_2.weapon == gladiator_1.weapon
      self.gladiators.clear
      return "both gladiators die"
    end
  end
end