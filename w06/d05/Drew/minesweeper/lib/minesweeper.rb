class Board

  def initialize(rows, columns)
    @board = Array.new(rows) {Array.new(columns)}
  end

  def board
    return @board
  end

end

class Cell

  def initialize
    @mine = mine
  end

  def mine
    explode = [0, 1]

    return explode.sample
  end
end
