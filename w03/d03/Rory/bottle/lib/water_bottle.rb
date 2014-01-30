class WaterBottle

  def initialize
    @empty = true
  end


  def empty?
    @empty 
  end

  def drink(ounces)
    #if @amount == 0
      #puts "You can't drink from an empty bottle"
    #else
      #@amount = (@amount - ounces)
    #end
    if empty?
      return "The bottle is empty"
    else
      @empty = true
      return "Water"
    end

  end

  def fill
    @empty = false
  end

end