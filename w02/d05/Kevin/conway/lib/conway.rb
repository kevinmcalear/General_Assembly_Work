class Cell
  def initialize
    @alive = false
  end
  def alive?
    return @alive
  end
  def kill_live
    @alive = !@alive
  end
end

class Board
  def initialize(rows, columns)
    @board = Array.new(rows) {Array.new(columns) {Cell.new}}
  end

  def board
    return @board 
  end

  def stats(row, column)

    value1 = self.board[row+1][column+1]
    value2 = self.board[row+1][column-1]
    value3 = self.board[row-1][column+1]
    value4 = self.board[row][column+1]
    value5 = self.board[row+1][column]
    value6 = self.board[row][column-1]
    value7 = self.board[row-1][column]
    value8 = self.board[row-1][column-1]

    if row > 0 && column > 0 

      array = [value1, value2, value3, value4, value5, value6, value7, value8]
    elsif row == 0 && column > 0

      array = [value1, value2, value4, value5, value6]

    elsif row > 0 && column ==0

      array = [value1,value3,value4,value5,value7]

    elsif row == 0 && column == 0
      array = [value4, value5, value1]

    elsif self.board[row].last == column && row
    end
    return array.count  
  end
end
