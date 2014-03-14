require 'pry'

class Board
  def initialize(row, column) 
    @spaces = Array.new(row) { Array.new(column){Cell.new} }
  end

  def spaces
    @spaces
  end 


end 

class Cell
  def initialize
    @bomb = false
  end 
  def set_bomb
    @bomb = true
  end 
  def bomb
    @bomb
  end 
end 
