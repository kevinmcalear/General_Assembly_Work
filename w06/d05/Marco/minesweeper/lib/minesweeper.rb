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

  def has_mine?(cell)
    
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