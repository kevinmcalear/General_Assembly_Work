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
    if gladiators.count >= 2
      return "Only two gladiators go in. Only one comes out."
    else
      gladiators.push(gladiator)
    end
  end
  def ready?
    if gladiators.count == 2
      return true
    end
  end

  def fight(gladiators)
    beats = {
      "trident" => "spear",
      "spear" => "club",
      "club" => "trident"
    }
    if self.ready?
      if beats[gladiators[0].weapon] == gladiators[1].weapon
        return "#{gladiators[1].name} wins! #{gladiators[0].name} is dead."
        #@gladiators.delete_at[0]
      elsif gladiators[0].weapon == gladiators[1].weapon
        return "Both gladiators are dead!"
        @gladiators.delete_at[1]
        @gladiators.delete_at[0]
      else
        return "#{gladiators[0].name} wins! #{gladiators[1].name} is dead."
        @gladiators.delete_at[1]
      end
    else
      return "You need two gladiators to fight!"
    end
  end

end