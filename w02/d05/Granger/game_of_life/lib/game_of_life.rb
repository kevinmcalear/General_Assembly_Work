class Cell
  def initialize
    @alive = [true, false].sample
  end

  def alive?
    @alive
  end

  def kill
    @alive = false
  end

  def its_alive
    @alive = true
  end

  def lives_next_gen
    @lives_next_gen
  end

  def lives_next_gen=(bool)
    @lives_next_gen = bool
  end

  def update
    @alive = @lives_next_gen
    @lives_next_gen = nil
  end

  def render
    return "O" if alive?
    return " " if !alive?
  end

end

class Game_of_Life < Array
  OFFSETS = [[0,1], [1,1], [1,0], [-1,1], [-1,0], [-1,-1], [1,-1], [0,-1]]

  def initialize
    5.times {self.push(Array.new(5) {Cell.new} )}
  end

  def display

    str= "\n"
    self.each do |row|
      row.each do |cell|
        str << cell.render
      end
      str <<"\n"
    end
    # puts str
    return str
  end

  def show_game
    puts display
  end

  def live_neighbors(row, space)
    neighbors = OFFSETS.map do |offset|

    end
  end


end