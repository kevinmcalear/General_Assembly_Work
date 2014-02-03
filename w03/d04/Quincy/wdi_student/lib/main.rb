class Student
  def initialize(name)
    @name = name
    @energy_level = 100
    @smarts = 0
  end

  def name
   return @name
  end

  def energy_level
    return 100
  end

  def smarts
    return 0
  end

  def break
    @energy_level = 100
  end

  def code
    if @energy_level = 0
      return smarts
    else
      @energy_level = 0
      @smarts += 1
    end
  end
end