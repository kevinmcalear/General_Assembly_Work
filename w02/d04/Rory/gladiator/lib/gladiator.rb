class Gladiator
  def initialize(name, weapon)
    @name = name
    @weapon = weapon
  end

  def name
    @name
  end

  def weapon
    @weapon.downcase
  end

end

class Arena
  def initialize(arena_name)
    @arena_name = arena_name
    @gladiator_names = []
  end

  def gladiator_names
    @gladiator_names  
  end

  def arena_name
    @arena_name
  end

  def add_gladiator(name)
    if @gladiator_names.count <2
      @gladiator_names.push(name)
    else
      puts "You cannot have more than 2 gladiators"
    end
  end

  def remove_gladiator(name)
    @gladiator_names.delete(name)
  end

  def gladiators_fight
  end

  def winner
  end
end