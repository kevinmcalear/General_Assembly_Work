class Game
  attr_accessor :board
  def initialize(rows)
    build_board(rows)
  end

  def build_board(rows)
    @board = Array.new(rows) {Array.new(rows)}
    @board.each do |row|
      row.map! do |cell|
        Space.new
      end
    end

  end

  def assign_bomb(row, col)
    @board[row][col].is_bomb
  end

  def assign_bombs_randomly
    size = @board.count
    7.times do
      @board[(0...size).to_a.sample][(0...size).to_a.sample].is_bomb
    end
  end

  def display
    display_str = ""
    @board.each do |row|
      row.each do |spot|
        display_str += spot.render
      end
      display_str += "\n"
    end

    display_str
  end

  def neighbors(x,y)
    neighbors = []
    neighbors<<@board[x-1][y-1]
    neighbors<<@board[x-1][y]
    neighbors<<@board[x-1][y+1]
    neighbors<<@board[x][y-1]
    neighbors<<@board[x][y+1]
    neighbors<<@board[x+1][y-1]
    neighbors<<@board[x+1][y]
    neighbors<<@board[x+1][y+1]

    neighbors.compact
    bombs = neighbors.select {|spot| spot.is_bomb?}
    
    bombs.count
  end

end

class Space
  
  def initialize
    @bomb = false
    @clicked_on = false
  end

  def is_bomb?
    @bomb
  end

  def is_bomb
    @bomb = true
  end


  def render
    if is_bomb?
      return "_B_"
    else
      return "___"
    end
  end

  def clicked_on?
    @clicked_on
  end

  def clicked
    @clicked_on = true
  end



end