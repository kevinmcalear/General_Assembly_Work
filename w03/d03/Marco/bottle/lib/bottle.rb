class Bottle
  def initialize
    @empty = true
  end

  def empty?
    @empty
  end

  def fill
    return @empty = false
  end

  def drink
    if empty? 
      return "Please fill it!"
    else
      @empty = true
      return "Delicious water!!"
    end
  end

end