class Cell
  def initialize
    @alive = 0
  end

  def alive
      return @alive
    end

  def live_die
    if alive == 0 
      return @alive = 1
    else alive == 1
      return @alive = 0
    end
  end

end

class Game
  def initialize
    @start = start 
    @board = Array.new(5) {Array.new(5){Cell.new}}

  end

  def board
    return @board
  end

  def start
    return @start = [1, 0]
  end

  def populate
      10.times do 
        random_val = game.board.sample 
        random_val.live_die
        return 
      end
      
  end

end
