class Students
  def initialize(name)
    @tired = false
    @name = name
    @knowledge = 0
    @ready = false
  end
  def tired?
    return @tired
  end
  def name
    return @name
  end
  def know
    return @knowledge
  end

  def tire
    @tired = true
  end
  def rest
    @tired = false
    @ready = false
  end
  
  def code
    if self.tired? == false
      @knowledge += 1
      if @ready == true
        @ready = false
      else
        self.tire
      end
      return self.know
    elsif self.tired? == true
      return "get some rest"
    end
  end

  def plan
    @ready = true
  end
end