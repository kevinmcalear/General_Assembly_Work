require 'pry'

class Cell
  def initialize
    @clicked = false
    @bomb = false
  end
  
  def clicked?
    @clicked
  end
  
  def bomb
    @bomb
  end

  def set_bomb
    @bomb = true
  end
end

class Board

  def initialize
    @grid = Array.new(8) {Array.new(8, Cell.new)}
    3.times do |a|
      row = rand(8)
      col = rand(8)

      #searches for a bomb, if not there, will set one
       if @grid[row][col].bomb == false
          @grid[row][col].set_bomb
      
       #if already has a  bomb,  
       else
        #binding.pry
        #it will run a loop until it finds a blank cell and sets one
        while @grid[row][col].bomb == true
        row = rand(8)
        col = rand(8)
          if @grid[row][col].bomb == false
            binding.pry
            @grid[row][col].set_bomb
          end
        end

      #end of if/else
      end

    end
  end

  def grid
    @grid
  end

end