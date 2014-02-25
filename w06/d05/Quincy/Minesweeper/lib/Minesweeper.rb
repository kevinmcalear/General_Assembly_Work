class Board
  def initialize
    @grid = Array.new(8, Array.new(8))
  end

  def has_cells
    has_cells = true
  end

  def is_grid
    @grid
  end

  def grid_rows
    grid_row_count = @grid.count
    return grid_row_count
  end

  def grid_columns
    grid_columns = @grid[0].count
    return grid_columns
  end
end

class Cells
  def initialize
    @cell = true
  end

  def bomb? (mine)
    if mine == true
      return @cell
    else
      @cell = false
      return @cell
    end
  end
end
