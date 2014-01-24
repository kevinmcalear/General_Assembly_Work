#gladiator


#Gladiator class
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


#Arena class
class Arena 

  def initialize(name)
    @name = name.capitalize
    @gladiators = Array.new
    @beats = {
      :spear => :trident,
      :club => :spear,
      :trider => :club
      }
  end

  def name
    return @name
  end

  def add(gladiator)
    if @gladiators.count >= 2
      return "More gladiators cannot enter"
    else
      @gladiators.push(gladiator)
    end
  end

  def gladiators
    return @gladiators
  end

  def fight
    if gladiators[0].weapon == gladiators[1].weapon
      return "Both die!"
    elsif @beats[@gladiators[0].weapon] == gladiators[1].weapon
      return gladiators[1].name + " wins"
    else
      return gladiators[0].name + " wins"
    end
  end

end
