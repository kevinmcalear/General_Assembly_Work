class Board
  def initialize(x)
    @board = Array.new(x){Array.new(x){Cell.new}}
  end

  def board
    @board
  end
end

class Cell
  def initialize
    alive_or_dead = ["alive", "dead"]
    @cell = alive_or_dead.sample
  end
  def alive
    @cell = "alive"
  end
  def dead
    @cell = "dead"
  end
  def cell=(cell)
    @cell = cell
  end
  def cell
    return @cell
  end
  def alive_or_dead
    return @cell
  end

end