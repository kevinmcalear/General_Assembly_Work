require "pry"

#####################
#### Gladiator Class ####
#####################

class Gladiator
  def initialize(name)
    @name = name
    @weapon = ["Trident", "Spear", "Club"].sample
  end

  def name
    return @name
  end

  def weapon
    return @weapon
  end
end

#####################
#### Stadium Class #####
#####################

class Stadium
  def initialize(name)
    @name = name
    @mortal_kombat = []
    # when Stadium class is instantiated, begin game loop? or def method that does that? 
  end

  def name
    return @name
  end

  def mortal_kombat
    return @mortal_kombat
  end

  def and_then_there_was(gladiator)
    if @mortal_kombat.size <= 2
      @mortal_kombat << gladiator
    else
      return "Too bad YOU. Will die. Later."
    end
  end

# def fight()
#   gladiator1 = self.mortal_kombat[0]
#   gladiator2 = self.mortal_kombat[1]
#   beats = {
#     "Trident" => "Spear",
#     "Spear" => "Club",
#     "Club" => "Trident"
#   }
  
#   g1_play = gladiator1[:play]
#   g2_play = gladiator2[:play]

#   if beats[gladiator1] == g2_play
#     return "#{gladiator2.name} wins!"
#   else
#     return "#{gladiator1.name} wins!"
#   end
# end

end