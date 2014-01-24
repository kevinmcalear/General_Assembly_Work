class Gladiator
  def initialize(name)
    @name = name
    @g_weapon = g_weapon
  end

  def name
    return @name
  end

  def g_weapon
    return @g_weapon
  end

end


class Arena
  def initialize(a_name)
    @a_name = a_name
  end

  def a_name
    return @a_name.capitalize!
  end

  # * An arena can have gladiators
  def gladiator_count
    return 

  # def fight(gladiator_1, gladiator_2) 
  #   fight = {
  #   "Trident" => "Spear",
  #   "Spear" => "Club",
  #   "Club" => "Trident"
  # }

  #     if fight[gladiator_1[:fight]] == gladiator_2[:play]
  #       return "#{gladiator_1[:name]} wins!"
  #     else
  #       return "#{gladiator_2[:name]} wins!" 
  #     end

end
