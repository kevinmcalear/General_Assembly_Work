require 'pry'
class Board
  def initialize(rows, columns)
    @board = Array.new(rows){Array.new(columns)}
  end

  def board
    @board
  end

  def assign_bombs(num)
    a = (0...@board.size).to_a
    b = (0...@board[0].size).to_a
    bomb_locations = []
    num.times do
      bomb_locations << @board[a.sample][b.sample] = "bomb"
    end
  end

  def bombs_away
    bomb_locations = []

  end
end

class Cell 
  def initialize
    @clicked = false
    @flagged = false
  end
  
  def clicked
    @clicked = true
  end

  def flagged
    @flagged = true
  end

  def neighbor(x, y)
    a = [x,x+1,x-1]
    b = [y, y+1, y-1]
    @neighbors = a.product(b)
  end

end

binding.pry