class Water_Bottle

  def initialize
    @empty = true
  end

  def empty?
      return @empty
  end  

  def fill
    return @empty = false
  end

  def drink
    if empty?
      return "The bottle is empty"
    else
      @empty = true
      return "Water"
    end
  end

end