class Student
  def initialize(name)
    @name = name
    @knowledge = 0
    @energy_level = 100
  end

  def name
    return @name
  end

  def knowledge
    return @knowledge
  end

  def energy_level
    return @energy_level
  end

  def code
    if energy_level == 100
    @energy_level = 0
    @knowledge += 1
    end
  end

  def break
    @energy_level = 100
  end

end