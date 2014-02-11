class Bottle

  def initialize(filled)
  @filled = false
  end

  def filled
  return @filled
  end

  def fill_it_up
    @filled = true
    return @filled
  end

  def drink_water
    if @filled == true
      @filled = false
      return "Water"
    else
      return "The bottle is empty."
    end
  end

end

