class Life

  def initialize
    @board = Array.new(4) {Array.new(4){0}}
  end

  def board
    return @board
  end

  def compute_cell(x,y)
    board.each_with_index do |array, x|
      array.each_with_index do |cell, y|
        current_neighbors = neighbors(x,y)
        change_state(cell) if 
  end


  def change_state(cell)
    return 1 if cell == 0
    return 0 if cell == 1
  end

  def neighbors(x, y)
    neighbors = []
    neighbors << @board[x][y+1]
    neighbors << @board[x+1][y+1]
    neighbors << @board[x+1][y]
    neighbors << @board[x+1][y-1] unless (y-1<0)
    neighbors << @board[x][y-1] unless (y-1<0)
    neighbors << @board[x-1][y-1] unless (x-1<0) || (y-1<0)
    neighbors << @board[x-1][y] unless (x-1<0)
    neighbors << @board[x-1][y+1] unless (x-1<0)
    return neighbors.compact

  end


end

# [ [ 1,0,0,0],
#  [ 0,0,0,0],
#  [ 0,0,0,0],
#  [ 0,0,0,0] ] 

# Any live cell with fewer than two live neighbours dies, as if caused by underpopulation.
# Any live cell with more than three live neighbours dies, as if by overcrowding.
# Any live cell with two or three live neighbours lives on to the next generation.
# Any dead cell with exactly three live neighbours becomes a live cell.
