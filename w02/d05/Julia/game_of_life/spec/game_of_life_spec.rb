require "pry"
require "spec_helper"

class Board
  def initialize(dimensions)
    @grid = Array.new(dimensions, Array.new(dimensions){Cell.new})
  end

  def grid
    return @grid
  end

end

class Cell

def initialize
  @cell_value = [0, 1].sample.to_i
  end

  def cell_value
    return @cell
  end

  def turn_on
    return cell_value = 1
  end

  def turn_off
    return cell_value = 0
  end

  def get_address
    board.grid.each[x][y]
  end

end