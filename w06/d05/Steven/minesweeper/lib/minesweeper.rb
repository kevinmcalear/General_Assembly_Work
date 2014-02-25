class Grid

  def initialize
    grid = Array.new(8) { Array.new(8) { Cell.new } }
    seed_mines(grid)
    @grid = grid
  end

  def grid_mee
    @grid
  end

  def seed_mines(grid)
    sampler = (0..7).to_a
    10.times do
      x = sampler.sample
      y = sampler.sample
      grid[x][y].set_mine
    end
  end

end


class Cell
  def initialize
    @state = false
    @is_mine = false
  end

  def state
    @state
  end

  def click
    @state = true
  end

  def is_mine?
    @is_mine
  end

  def set_mine
    @is_mine = true
  end
end
