class FortuneCookie

  def initialize
    @wrapped = true
    @cracked = false
  end

  def read
    if wrapped? 
      "You need to unwrap this!"
    elsif cracked?
      "You will write lots of good tests."
    else
      "You need to crack this!"
  end
end

  def wrapped?
    return @wrapped
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