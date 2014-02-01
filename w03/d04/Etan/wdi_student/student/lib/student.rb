class Student
  def initialize(nickname)
    @name = nickname
    @knowledge = 0
    @energy = 10
  end

  def name
    return @name
  end

  def knowledge
    return @knowledge
  end

  def energy
    return @energy
  end

  def learning
    @energy = @energy - 1
    @knowledge = @knowledge + 1
    return @energy
    return @knowledge
  end
end