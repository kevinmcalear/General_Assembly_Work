class WaterBottle

  def initialize
    @status = true
  end

  def status
    @status
  end

  def empty?
    status
  end

  def fill
    @status = false
  end

  def drink
    if @status == false
      return @status = true
    else
      return "Please fill bottle"
    end
  end

end