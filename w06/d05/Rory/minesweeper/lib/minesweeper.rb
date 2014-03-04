class Board
  def initialize(rows, columns)
    @rows = rows
    @columns = columns
  end

  def rows
    @rows
  end

  def columns
    @columns
  end

end

class Cell 
  def initialize
    @clicked = false
    @neighbors = []
  end
  
  def is_a_mine
    is_a_mine = [true, false]
    is_a_mine.sample
  end

  def clicked
    @clicked = true
  end

  def neighbors 
    @neighbors
  end

  def mine_or_not(array, index)
    if array[index] == 0
      true
    else 
      false
    end
  end
end