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
    if @gladiators.size < 2
      return "nooooooo"
    elsif @gladiators.size == 2
      fight


      if beats[glad_1.gladiators(1)] == [glad_2.gladiators(2)]
  return "#{glad_1.name} wins!"
else
  return "#{glad_2.name} wins!"
end
    #if glad_1.weapon = key of beats
    #and glad_2.weapon = value of beats

  end

end

end
