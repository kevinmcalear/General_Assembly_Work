class Minefield
  def initialize
    @grid = Array.new(8) { Array.new(8) }
    @bomb_count = 0
  end

  def grid
    @grid
  end

  def plant_bombs
    @grid.each do |row|
      row[rand(row.size)] = "bomb"
      @bomb_count +=1
    end
  end

  def bomb_count
    @bomb_count
  end
end

