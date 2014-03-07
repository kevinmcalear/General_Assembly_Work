require 'pry'

class Minesweeper
  def initialize 
    @board = Array.new(8, Cell.new) {Array.new(8, Cell.new)}
    @mine_positions = []
  end

  def board
    @board
  end

  def set_mines
    while @mine_positions.uniq.length < 10
      @mine_positions << [rand(8), rand(8)]
    end
    @mine_positions.uniq!
  end

  def mine_positions
    return @mine_positions
  end

end
 
class Cell < Minesweeper
  def initialize
    @clicked = false
  end

  def is_clicked?
    @clicked
  end

  def neighbor_mines
    
  end

end 

game = Minesweeper.new
=======
=======
>>>>>>> 08c49673e36cdf443d068febc43d0ea1a3918f7f
class Minesweeper
  def initialize(rows, columns, mines)
    @board = Array.new(rows) {Array.new(columns)}
    self.set_board(rows,columns)
    @mines = mines
    @cells_with_mines = []
  end

  def set_board(rows,columns)
    (0...rows).each do |row|
      (0...columns).each do |column|
        self.board[row][column] = Cell.new(row, column)
      end
    end
  end

  def board
    return @board
  end

  def mines
    return @mines
  end

  def cells_with_mines
    return @cells_with_mines
  end

  def set_mines
    while self.cells_with_mines.length < self.mines
      self.cells_with_mines << [rand(self.board.length),rand(self.board[0].length)]
      self.cells_with_mines.uniq!
    end
  end

  def is_mine?(row, column)
    if self.cells_with_mines.include?([row, column])
      return true
    else
      return false
    end
  end

  def number_of_neighbor_mines(cell)
    mine_count = 0
    (cell.row - 1..cell.row + 1).each do |neighbor_row|
      (cell.column - 1..cell.column + 1).each do |neighbor_col|
        if neighbor_row >= 0 && neighbor_col < self.board.length && neighbor_row < self.board.length && neighbor_col >= 0 && self.is_mine?(neighbor_row, neighbor_col)
          mine_count += 1
        end
      end
    end
    if self.is_mine?(cell.row, cell.column)
      return mine_count - 1
    else
      return mine_count
    end
  end



end

class Cell #< Minesweeper
  def initialize(row, column)
    @row = row
    @column = column
    @flipped = false
  end

  def row
    return @row
  end

  def column
    return @column
  end

  # def id(row, column)
  #   [self.row, self.column]
  # end

  def flipped?
    return @flipped
  end

  def flip
    @flipped = true
  end


end