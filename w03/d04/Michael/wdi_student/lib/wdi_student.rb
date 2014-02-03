class Student
  def initialize(name)
    @name = name
    @knowledge = 0
    @energy = 2
  end
  def energy=(energy)
    @energy = energy
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
  def code
    if @prep == true && @energy == 2
      @knowledge +=1
      @energy -= 1
    elsif @prep == true && @energy == 1
      @knowledge +=1
      @energy -= 1
      @prep = false
    elsif energy > 0
      @knowledge += 1
      @energy -= 2
    end 

  end
  def break
    @energy = 2
  end
  def plan
    @prep = true
  end 

  def prep
    return @prep
  end 

end 