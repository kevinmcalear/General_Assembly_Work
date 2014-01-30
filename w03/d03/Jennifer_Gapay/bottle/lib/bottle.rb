class WaterBottle
  def initilize
    @empty = true
  end

  def empty? #method
    return @empty?
  end

  def fill
    @empty = false
  end

  def drink
    if empty?
      return "The bottle is empty"
    else 
      @empty = true
      
  end
     
end
