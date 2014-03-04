class Student
  def initialize(name)
    @name = name
    @energy = true
    @knowledge = 0
  end

  def name
    return @name
  end

  def energy
    return @energy
  end

  def knowledge
    return @knowledge
  end

  def code
    if @en.ergy
      @energy = false
      @knowledge += 1
    else
      "take a break"
    end
  end

  def break
    @energy = true
  end
end