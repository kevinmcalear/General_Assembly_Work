class TheCell
  def initialize
    @alive = false

  end

  def alive?
    return @alive
  end

  def live_die

    if @alive == true
      return @alive = false
    else @alive == false
        return @alive = true
    end
  end
end

class Grid
  def initialize(x, y)
    @board = Array.new(x){Array.new(y){TheCell.new}}
     
  end 


  def board
    return @board
  end

  def random
    @board.sample(3)
  end
end
