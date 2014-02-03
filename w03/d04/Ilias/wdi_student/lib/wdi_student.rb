class Student

  def initialize
    @knowledge = 0
    @energy = 100
  end

  def code
    if energy_level >= 100
      @knowledge += 100
      @energy -= 100
    else
      return "...must...take...break....zzz"
    end
  end

  def knowledge_level
    @knowledge
  end

  def energy_level
    @energy
  end

  def break
    @energy = 100
  end

  def plan
    @energy += 100
  end

end
