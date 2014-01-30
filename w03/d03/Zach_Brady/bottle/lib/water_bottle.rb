class Water_Bottle
  def initialize
    @contains = 0
  end

  def contains
    @contains
  end

  def go_to_fountain
    @contains = 1
  end

  def drink
    @contains -= rand()
    if @contains < 0
      @contains = 0
    end
  end

end