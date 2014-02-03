class FortuneCookie
  def initialize
    @wrapped = true
  end

  def read
    if wrapped?
      return "You need to unwrap this!"
    elsif cracked?
      return "You will write lots of good tests."
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

### new instance variable: it changes the state of the object ###
  def crack!
    if wrapped?
      return false
    else
    @cracked = true
    end
  end

  def cracked?
        return @cracked
  end

end