class Bottle

  def initialize
    @state = "empty"
    @sips = []
  end

  def state
    return @state
  end

  def full
    @state = "full"
  end

  def sips
    return @sips
  end
  
  def drink
    if @state == "empty"
      puts "Can't drink from an empty bottle!!"
    elsif @sips.count < 2 && @state == "full"
      @sips << "sip"
      @state = "full"
    else
      @state = "empty"
      @sips = []
    end
  end
  
end