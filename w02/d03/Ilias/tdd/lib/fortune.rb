class FortuneCookie

  def initialize()
    @wrapped = true
    @cracked = false

  end

  def read
    if wrapped?
      return "You need to unwrap this!"
    elsif !cracked?
      return "You need to crack this!"
    else
      return "You will write lots of good tests."
    end
  end

  def wrapped?
    @wrapped
  end

  def unwrap!
    @wrapped = false
  end

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