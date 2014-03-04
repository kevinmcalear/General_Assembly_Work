class FortuneCookie

  def initialize
    @wrapped = true
    #@cracked = false
  end

  def read
    if wrapped?
      return "Please unwrap me!"
    elsif @cracked
      return "You will write lots of good tests."
    else
      return "Please crack me!"
    end
  end

  def wrapped?
    @wrapped
  end

  def unwrap!
    @wrapped = false
  end

  def crack!
    if !wrapped?
      @cracked = true
    else
      @cracked = false
    end
  end

  def cracked?
    @cracked
  end

end