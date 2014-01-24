class Gladiator
  def initialize (name, weapon)
    @name = name
    @weapon = weapon
  end
  def has_name
    return @name
  end
  def has_weapon
    return @weapon
  end
end


class Arena
  def initialize (arena_name, gladiators)
    @arena_name = arena_name
    @gladiators = []
  end
  def gladiators
    @gladiators
  end
  def has_name
    return @arena_name.capitalize
  end
end

