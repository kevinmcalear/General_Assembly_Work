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
    @gladiators_in_arena = []
  end

  def gladiators_in_arena
    @gladiators_in_arena
  end

  def arena_name
    @arena_name
  end

  def add_gladiator1(name)
    if @gladiators_in_arena.count <2
      @gladiators_in_arena.push(name)
    else
      puts "You cannot have more than 2 gladiators"
    end
  end


  def add_gladiator2(name)
    if @gladiators_in_arena.count <2
      @gladiators_in_arena.push(name)
    else
      puts "You cannot have more than 2 gladiators"
    end
  end

  def remove_gladiator(name)
    @gladiators_in_arena.delete(name)
  end

  def gladiators_fight(glad1, glad2)
    if glad1 == "trident" && glad2 == "spear"
      puts "#{glad1} 1 wins"
  end

  def winner
  end
end