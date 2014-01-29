class Bottle
  def initialize
    @water = false
  end

  def water?
    return @water
  end

  def fill
    @water = true
  end

  def drink
    if @water
      @water = false
      return "Water"
    else
      "The bottle is empty"
    end
  end
end