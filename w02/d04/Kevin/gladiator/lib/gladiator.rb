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
  def initialize(arena)
    @arena = arena.capitalize
    @gladiators = []
  end

  def name
    return @arena
  end

  def gladiators
    return @gladiators
  end

  def add_gladiators( gladiator )
    if @gladiators.count >= 2
      return "Sorry! Only Two Allowed!"
    else
      return @gladiators << gladiator
    end
  end

  def fight
    if @gladiators.count < 2
      return "Not Enough To Fight!!"
    else
      how_to_win = {
        "Trident" => "Spear",
        "Spear" => "Club",
        "Club" => "Trident"
      }

      if how_to_win[@gladiators[0].weapon] == @gladiators[1].weapon
        return "#{@gladiators[1].name} wins!"
        @gladiators.delete_at(0)
      else
        return "#{@gladiators[0].name} wins!"
        @gladiators.delete_at(1)
      end
    end
  end
end


# def say_name(glad)
 #  puts glad.name
 # end