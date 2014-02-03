

class Student

  def initialize(name)
    @name = name
    @knowledge = 0
    @energy = true
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

  def break
    @energy = true
  end

  def code
    if @energy == true
      @energy = false
      @knowledge += 5
    else
      @energy = false
    end
  end

end