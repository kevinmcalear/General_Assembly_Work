class Waterbottle
  def initialize 
    @waterbottle = "Empty"
    counter = 0
  end

  def waterbottle
    return @waterbottle
  end

  def fill_it_up
    if waterbottle == "Full"
      return "I'm already full!"
    else
      return @waterbottle = "Full"
    end
  end

  def drink_it_up
    if @waterbottle == "Full"
      return "Water"
      @waterbottle = "Empty"
    else
      return "I'm empty!"
    end
  end





end