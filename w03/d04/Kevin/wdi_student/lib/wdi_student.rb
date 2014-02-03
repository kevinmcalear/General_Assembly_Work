class Student
  def initialize(name)
    @name = name
    @sleeply = false
    @knowledge = 0
    @study = false
  end

  def name
    return @name
  end

  def sleepy?
    return @sleepy
  end

  def knowledge
    return @knowledge
  end

  def code 
    if @sleepy == true 
      return @knowledge
      return @sleepy
    elsif @study == true
      @knowledge += 1
      @study = !@study
      @sleepy
    else
      @knowledge += 1
      @sleepy = !@sleepy
    end
  end

  def break
    if @sleepy == true
      @sleepy = !@sleepy
    else
      @sleepy
    end
  end

  def study
    if @study == false
      @study = !@study
    else
      @study
    end
  end
end