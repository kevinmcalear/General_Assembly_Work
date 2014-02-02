class Student
  def initialize(name)
    @name = name
    @knowledge = 0
    @energy = true
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

  def coding
    if @energy == false
      return @knowledge
    elsif @energy == true
      @energy = false
      @knowledge = knowledge + 1
    end
  end

  def break
    @energy = true
    return @energy
  end


end