class Bottle

  def initialize
    @fill = false
  end

  def fill?
    return @fill
  end 

  def fill
    @fill = true
  end 

  def drink
    
    if fill? == false
      return "You cannot drink from an empty bottle"
    elsif fill? == true
      @fill = false
      return "That is a good drink!"
    end 

  end 

end 