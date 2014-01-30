require 'pry'
class Water
  def init
    @full = 0
  end
  def full?
    return @full
  end
  def fill
    @full = 3
  end
  def drink
    if @full == 0
      return "there is no water! Fill your bottle."
    else
      return @full = @full - 1
    end
    

  end
end