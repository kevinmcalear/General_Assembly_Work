class Bottle
  def initialize
    @state = 0
  end

  def state
    return @state
  end

  def fill
    if @state != 0
      return @state
    else
      return @state = 3
    end
  end

  def drink
   if @state == 0
    return @state
  else
   return @state -= 1
 end
end
end