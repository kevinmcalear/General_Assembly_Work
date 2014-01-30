class Bottle
  def initialize(state)
    @state = state
  end

  def state
    @state
  end

  def fillup
    if @state == "empty"
      @state = "full"
    else
      @state
    end
  end

  def drink
    if @state == "full"
      @state = "empty"
    else
      "fill it up first"
    end
  end
end