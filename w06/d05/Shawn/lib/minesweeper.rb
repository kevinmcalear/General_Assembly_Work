require 'pry'

class Minesweeper
  def initialize(rows, cols, number_of_mines)
    @rows = rows
    @cols = cols
    @number_of_mines = number_of_mines
    @mines = []
    @board = Array.new(rows) { Array.new(cols) {Array.new(1, Cell.new)}}
    @game = Game.new
    @mine_neighbors = 0
  end

  def cell
    return @cell
  end

  def rows
    return @rows
  end

  def cols
    return @cols
  end

  def number_of_mines
    return @number_of_mines
  end

  def mines
    return @mines
  end

  def board
    return @board
  end

  def game
    return @game
  end

  def row
    rand(rows)
  end

  def col
    rand(cols)
  end

  def randomly_assign_mines
    while mines.uniq.count < number_of_mines
      mine = @board[row][col][0]
      if mine.mine? == false
        mine.set_mine
        mines << mine
      end
    end
  end
  
  def mine_counter
    counter = 0
    @board.each do |row|
      row.each do |col|
        col.each do |cell| 
          if cell.mine? == true
            counter += 1
          end
        end
      end
    end
    counter
  end


  def mine_checker(cell)
    if cell.mine?
      game.destroy
    else
      
    end
  end

  def mine_neighbors
    @mine_neighbors
  end
end

class Cell

  def initialize
    @mine = false
    @clicked = false
  end

  def mine?
    @mine
  end

  def clicked?
    @clicked
  end

  def click
    @clicked = true
  end

  def set_mine
    @mine = true
  end
end

class Game
  def initialize
    @started = true
  end

  def started? 
    @started
  end

  def destroy
    @started = false
  end


end

binding.pry
