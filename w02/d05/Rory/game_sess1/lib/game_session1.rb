class Game
  def initialize(x, y)
    @x = x
    @y = y
    @board = Array.new(x){Array.new(y){Cell.new}}
    @new_board = Array.new
  end

  def board
    @board
  end

  def neighbors(x,y)
    @neighbors = Array.new
    @neighbors.push.@board[x-1][y-1]
    @neighbors.push.@board[x][y-1]
    @neighbors.push.@board[x+1][y-1]
    @neighbors.push.@board[x-1][y]
    @neighbors.push.@board[x+1][y]
    @neighbors.push.@board[x-1][y+1]
    @neighbors.push.@board[x][y+1]
    @neighbors.push.@board[x+1][y+1]

    
    alive_neighbors = @neighbors.select do |neighbor|
      neighbor.status == true
    end
    return alive_neighbors.count
  end

  def tick
    @board.each do |x| 
      @board[x].each do |y|
        neighbors = neighbors(x,y)
        if(board[x][y].status == true)
          
          board[x][y].change
        elsif()
      end
    end
  end

end

class Cell
  def initialize
    @status = [true, false].sample
  end

  def status
    return @status
  end

  def change 
    @status = !@status
  end


end