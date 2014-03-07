class WaterBottle

  def initialize
    @empty = true
    @sips = 0 
  end

  def sips
    return @sips
  end

  def empty?
    return @empty
  end

  def fill
    @empty = false
    @sips = 3
  end

  def drink
    if empty?
      return "Please fill me!"
    else
      @sips -= 1
      if @sips == 0
        @empty = true
      end
    end
  end

end