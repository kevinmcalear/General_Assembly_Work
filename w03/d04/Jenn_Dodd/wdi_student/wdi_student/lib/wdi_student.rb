class Student
  def initialize(name)
    @name = name
    @knowledge = 0
    @tired = false
    @plan = false
  end

  def name
    return @name
  end

  def knowledge
    return @knowledge
  end

  def code 
    if @plan && !@tired
      @plan = false
      return @knowledge += 1
    elsif !@plan && !@tired 
      @tired = true
      return @knowledge += 1
    else
      return @knowledge
    end
  end

  def tired?
    return @tired
  end

  def break
    if !@tired
      return "Don't be lazy, get codin!"
    else
      return @tired = false
    end
  end

  def plan
    return @plan = true
  end

  def has_planned?
    return @plan
  end

end