class FortuneCookie
  def initialize
    @wrapped = true
  end

  def read
    if wrapped?
      return "You need to unwrap this!"
    elsif cracked?
      return "You will write lots of good code!"
    else 
      return "You need to crack this!"
    end
  end

  def wrapped?
    return @wrapped
  end

  def unwrap!
    @wrapped = false
  end

  def crack!
    @cracked = true
  end

  def cracked?
    if wrapped?
      return false
    else 
      
      @cracked = true
    end
  end


end