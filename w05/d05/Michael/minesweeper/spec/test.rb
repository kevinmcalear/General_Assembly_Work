class Minefield
  def initialize 
    @array = Array.new(8) {Array.new(8,:bomb=> false, :neighbors=>0)}
  end 
  def array
    @array
  end

  def set_bomb(row,column)
    @array[row][column][:bomb] = true 
    set_neighbors(row,column)
  end

  def set_neighbors(row,column)
    #Row Above
    @array[row -1][column -1][:neighbors] +=1
    @array[row -1][column][:neighbors] +=1
    @array[row -1][column +1][:neighbors] +=1
    #Same Row
    @array[row][column -1][:neighbors] +=1
    @array[row][column +1][:neighbors] +=1
    #Row Below
    @array[row +1][column -1][:neighbors] +=1
    @array[row +1][column][:neighbors] +=1
    @array[row +1][column +1][:neighbors] +=1
  end 


end
