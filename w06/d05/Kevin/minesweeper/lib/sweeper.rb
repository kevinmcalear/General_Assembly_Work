class Board
  def initialize(board_size)
  @board = Array.new(board_size) { Array.new(board_size)}
  @status = "play"
  end

  def board
    @board
  end

  def status
    @status
  end

  def bazinga(choice)
    counter = 0
    while counter < choice
      a = (0...@board.count).to_a.sample
      b = (0...@board.count).to_a.sample
      if @board[a][b] != "bomb"
        @board[a][b] = "bomb"
        counter += 1
      end
    end
  end
end

class Cell
  def initialize
    @bomb = false
    @clicked = false
    @flagged = false
    @bomb_count = nil
  end

  def bomb?
    @bomb
  end

  def clicked?
    @clicked
  end
  
  def flagged?
    @flagged
  end
  
  def bomb_count
    @bomb_count
  end

end