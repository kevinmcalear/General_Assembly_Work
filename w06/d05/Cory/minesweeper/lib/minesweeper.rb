class Minesweeper
  def initialize(rows, cols)
    @rows = rows
    @cols = cols
    @board = Array.new(@rows) {Array.new(@cols, 0)}
    return true
  end

  def rows
    return @rows
  end

  def cols
    return @cols
  end

  def board
    return @board
  end

  def has_mines
    board = [[1, 0, 0], [0, 0, 0], [0, 0, 0]]
    return board
  end
end

class Cell
  def initialize(value, status)

  end

  def value
    return @value
  end
end
