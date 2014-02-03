class Game
  def initialize
    @initial_board = [
      ["alive", "dead", "alive"],
      ["dead", "alive", "alive"],
      ["alive", "dead", "alive"]]
    @temp_board = [
      ["alive", "dead", "alive"],
      ["dead", "alive", "alive"],
      ["alive", "dead", "alive"]]
  end

  def initial_board
    return @initial_board
  end

  def temp_board
    return @temp_board
  end

  def length
    return self.initial_board.length
  end

  def number_of_neighbors_alive(row, column)
    alive_count = 0
    (row - 1..row + 1).each do |cell_row|
      (column - 1..column + 1).each do |cell_col|
        if cell_row >= 0 && cell_col < self.length && cell_row < self.length && cell_col >= 0 && self.initial_board[cell_row][cell_col] == "alive"
          alive_count += 1
        end
      end
    end
    if self.initial_board[row][column] == "alive"
      return alive_count - 1
    else
      return alive_count
    end

  end

  def change_board(row, column)
    neighbors = number_of_neighbors_alive(row, column)
    if self.initial_board[row][column] == "dead"
      if neighbors == 3
        return "alive"
      else
        return "dead"
      end
    else
      if neighbors < 2
        return "dead"
      elsif neighbors > 3
        return "dead"
      else
        return "alive"
      end
    end
  end

  def print_board
    (0..self.length - 1).each do |row|     
      (0..self.length - 1).each do |column|
        if self.initial_board[row][column] == "alive"
          print "A"
        else
          print " "
        end
      end
      puts
    end
    puts "*****"
  end

  def tick
    self.print_board
    (0...self.length).each do |row|     
      (0...self.length).each do |column|        
        self.temp_board[row][column] = self.change_board(row, column)
      end
    end
    @initial_board = self.temp_board
    # self.tick
    return temp_board[0][0]
  end

end


game = Game.new
10.times {game.tick}

