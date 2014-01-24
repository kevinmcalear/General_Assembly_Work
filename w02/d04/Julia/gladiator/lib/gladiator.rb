class Gladiator

  def initialize(glad_name, weapon)
    @glad_name = glad_name.to_s
    @weapon = weapon.to_s
  end

  def glad_name
    return @glad_name
  end

  def weapon
    return @weapon
  end

end


class Arena

  def initialize(arena_name)
    @arena_name = arena_name.to_s.capitalize
    @gladiators = []
  end

  def arena_name
    return @arena_name
  end

  def gladiators
    return @gladiators
  end

  def add(gladiator)
    return @gladiators.push(gladiator)
  end

  def fight(gladiator_one, gladiator_two)
     weapons = {
      "trident" => "spear",
      "spear" => "club",
      "club" => "trident"
    }

    #if gladiator.weapon == key 
    if @gladiators.size < 2
      return "No fight tonight!"
    elsif @gladiators.size == 2
      return @fight
    end
  end

end



