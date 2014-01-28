class Game
  def initialize(number)
    @cell = ["dead", "alive"].sample
    @board = Array.new(number) {Array.new(number){Cell.new.sample}}
  end

  def board
    return @board
  end

  def cell
    return @cell
  end

  def neighbors(x, y)
    total = []
    total << left = board[x][y-1] unless x-1 < 0
    total << right = board[x][y+1]
    total << top = board[x-1][y] unless y-1 < 0
    total << bottom = board[x+1][y]
    total << topleft = board[x-1][y-1] unless x-1 < 0 && y-1 < 0
    total << topright = board[x-1][y+1] unless x-1 < 0
    total << bottomright = board[x+1][y+1]
    total << bottomleft = board[x+1][y-1] unless y-1 < 0
    return total
  end

  def alive_count(x,y)
    neighbors(x,y).count("alive")
  end

  def dead_count(x,y)
    neighbors(x,y).count("dead")
  end

  class Cell

    def initialize
     @sample = sample
   end

   def sample
    return ["dead", "alive"].sample
  end
end