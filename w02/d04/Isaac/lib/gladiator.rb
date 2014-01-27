class Gladiator
  def initialize(name, weapon)
    @name = name.capitalize
    @weapon = weapon.capitalize
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
  def add_gladiator(gladiator)
    gladiators << gladiator 
    gladiators.shift if gladiators.size > 2
  end
  def gladiators
    return @gladiators
  end
  def fight
    current_gladiators = self.gladiators
    p1 = current_gladiators[0].weapon.downcase.to_sym
    p2 = current_gladiators[1].weapon.downcase.to_sym
    wins = {trident: :spear, spear: :club, club: :trident}
    winner = {true => p1, false => p2}[wins[p1] == p2]
    return "#{self.gladiators[0].name} wins!" if winner == p1
    return "#{self.gladiators[1].name} wins!" if winner == p2
  end


  # * If there are two gladiators in the arena, you can call a fight method that will kill one of the gladiators and remove them from the arena.
  # * Winning conditions:
  #   * Trident beats Spear
  #   * Spear beats Club
  #   * Club beats Trident
  #   * If the two gladiators have the same weapon, they both die.

end









