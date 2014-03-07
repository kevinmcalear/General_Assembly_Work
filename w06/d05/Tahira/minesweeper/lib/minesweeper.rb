class Game

  def initialize 
    @board = Array.new(8, Array.new(8, Cell.new))
  end

  def board 
    @board 
  end

  def length
    8
  end

  def width
    8
  end

  def populate

  end

end

class Cell
  def initialize
    @value = 1
    @mine = [0,1].sample
    @clicked = false
    @flag = false
  end

  def value
    return @value
  end

  def mine
    return @mine
  end

  def clicked?
    return @clicked
  end

  def click
    @clicked = true
  end

  def flag
    return @flag
  end
end

class User
  def click(cell)
    cell.click
  end
end