class WDIstudent
  def initialize(name)
    @name = name
    @smarts = 0
    @energy = true
  end

  def name
    @name
  end

  def smarts
    @smarts
  end

  def energy?
    @energy
  end

  def energy=(change)
    if @energy == false
      return @energy = true
    else @energy == true
      return @energy = false
    end
  end

  def code
    if @energy == false
      puts "You should take a break"
      return @smarts = 0
    elsif @energy == true
      return @smarts = 1
    end
  end

  def break
    return @energy = true
  end

end