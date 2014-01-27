class Gladiator

  def initialize(name)
    @name = name
    weapons = [:sexappeal, :intelligence, :humor]
    @weapon = weapons.sample
  end

  def name()
    return @name
  end

  def weapon()
    return @weapon
  end

end



class Arena

  def initialize(name)
    @name = name.capitalize
    @current_gladiators = []
  end

  def name()
    return @name
  end

  def participating(gladiator)
    if @current_gladiators.size !=2
    @current_gladiators << gladiator
    else
      return false
    end
  end


  def beats
  beats = {
    sexappeal: :intelligence,
    intelligence: :humor,
    humor: :sexappeal
  }

   glad1 = @current_gladiators[0]
   glad2 = @current_gladiators[1]
      if glad1.weapon == glad2.weapon
        return "They both die!"
      elsif beats[glad1.weapon] == glad2.weapon
        return "#{glad1} wins!"
      elsif beats[glad2.weapon] == glad1.weapon
        return "#{glad2} wins!"
      else
        return false
      end
  end

end

