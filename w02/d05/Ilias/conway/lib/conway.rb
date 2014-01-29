class Life

  def initialize
    sample_array = [0, 1]
    # @table = Array.new(6, Array.new(6) { |index| sample_array.sample} )
    @table = [
      [1,0,1],
      [0,1,0],
      [1,0,1]
    ]
  end

  def table
    return @table
  end

  def define_cell
  opposite_table = @table.map do |array|
      array.map do |value|
        if value == 0 
          return 1
        else
          return 0
        end
      end
    end
  end

  def sum_of_neighbors(index)
    return 4
  end


end