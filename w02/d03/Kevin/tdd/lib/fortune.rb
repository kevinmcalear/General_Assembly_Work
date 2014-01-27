class FortuneCookie

  def initialize
    @wrapped = true
    # @cracked = false
  end

  def read
    if wrapped?
      return "You need to unwrap this!"
    elsif cracked?
      return "You will write lots of good tests."
    else
      return "You need to crack this mother open!"
    end
  end

  def wrapped?
    return @wrapped
  end

  def cracked?
    return @cracked
  end

  def unwrap!
    @wrapped = false
  end

  def crack!
    if wrapped?
      return "unwrap this mofo first!"
    else
      return @cracked = true
    end
  end

end