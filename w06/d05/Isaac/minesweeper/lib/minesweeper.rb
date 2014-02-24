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
    @board.each do |array|
      array.each do |cell|
        populate_cell(cell)
      end
    end
  end

  def populate_cell(cell)
    cell = [0,4].sample
  end

end

class Cell
  def initialize
    @value = 1
    @mine = [0,1].sample
    @clicked = false
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
end

class User
  def click(cell)
    "click"
  end
end