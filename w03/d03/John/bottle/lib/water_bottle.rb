class WaterBottle
  def initialize
    @state = "empty"
    @water = []
  end
  
  def state
    return @state
  end 

  def full?
    if self.state == "empty"
      return false
    else
      return true
    end
  end

  def fill
    if !self.full?
      @state = "full" 
    end
  end

  def drink
    if self.full?
      @water << "water"
      @state = "empty"
    else
      return "The bottle is empty. You can't drink air!"
    end
  end

  def water
    return @water
  end
end