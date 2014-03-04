class WaterBottle
  attr_reader :sips


  def initialize
    @empty = true
    @sips = 0
  end

  def empty?
    @empty
  end

  def empty=(bool)
    @empty = bool
  end

  def fill
    self.empty = false
    @sips = 3
  end

  def drink
    if empty?
      raise ArgumentError
    else
      @sips -= 1
      self.empty = true if @sips == 0
      return "water"
    end
  end


end