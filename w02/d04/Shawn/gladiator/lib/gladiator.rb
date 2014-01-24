#GladiatorArena

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
    @name = name.upcase!
    @gladiators = []
    @winner = winner

  end

  def name
    return @name
  end

  def gladiators
    return @gladiators
  end

  def add(gladiator)
    @gladiators.push(gladiator)
  end

  def check_num_gladiators
    if @gladiators.count > 2
      #puts "Error...Too many gladiators in the arena...Removing the extras..."
      i = 0
      while i < @gladiators.count && @gladiators.count > 2
        @gladiators.delete(@gladiators[i])
        i += 1
      end
      return @gladiators
    end
  end

  def winner
    return @winner
  end

  def fight
    beats = {
      "Spear" => "Trident",
      "Club" => "Spear",
      "Trident" => "Club"
    }

    if beats[gladiators[0].weapon] == gladiators[1].weapon
      #puts "#{gladiators[1].name}, with a #{gladiators[1].weapon},
      #beat gladiators[0].name}, who carried a #{gladiators[0].weapon}!"
      gladiators.delete(gladiators[0])

  elsif beats[gladiators[1].weapon] == gladiators[0].weapon
     # puts "#{gladiators[0].name}, with a #{gladiators[0].weapon}
      #beat #{gladiators[1].name}, who carried a #{gladiators[1].weapon}"
      gladiators.delete(gladiators[0])
else
 # puts "Both lose"
  gladiators.clear
end
end
end
