require 'pry'

class Board
  def initialize
    @row = 4
    @column = 4
    @array = Array.new(@row) {Array.new(@column) {Cell.new}}
  end

  def row
    return @row
  end 

  def column
    return @column
  end

  def array
    return @array
  end 

  def next_generation
    x = 0
    y = 0
    while x < array.length
      
      while y < array[x].length
          count = 0
          ## Evaluate the Row above
          if x==0 || y==0
            count +=0
          elsif array[x-1][y-1].alive == true 
            count +=1
          end 

          if x==0
            count +=0  
          elsif array[x-1][y].alive == true
            count +=1
          end

          if x==0 
            count +=0
          elsif array[x-1][y+1]== nil
            count +=0
          elsif array[x-1][y+1].alive == true
            count +=1 
          end 
           
          ## Evaluate the Current Row##  
          if y==0
            count +=0
          elsif array[x][y-1].alive == true
            count +=1
          end
          if array[x][y+1] == nil
            count +=0
          elsif array[x][y+1].alive == true
            count +=1
          end 

          ## Evaluate the Row Below ##
          if y==0
            count +=0
          elsif array[x+1][y-1]== nil
            count +=0
          elsif array[x+1][y-1].alive == true 
            count +=1
          end

          if array[x+1][y].alive == nil
            count += 0
          elsif array[x+1][y].alive == true
            count +=1
          end
          
          if array[x+1][y+1] == nil
            count +=0
           elsif array[x+1][y+1].alive == true          
            count +=1
          end 

          ## Evaluate the Next Generation
          if array[x][y].alive == true 
          
            if count == 2 || count == 3
              array[x][y].next_value= true
            else 
              array[x][y].next_value= false
            end   
          
          elsif array[x][y].alive == false
          
            if count ==3
              array[x][y].next_value = true
          
            end 
          end 
        
        y += 1
      end     
      
      x += 1
    end 

  end

end

class Cell
  def initialize
    @alive = [true, false].sample
    @next_value =false
  end
  
  def alive= (value)
    @alive = value
  end

  def next_value= (value)
    @next_value = value
  end

  def alive
    if nil
      return @alive = false
    else 
      return @alive  
    end 
  end

  def next_value
    return @next_value
  end 

end

board = Board.new
board.array[1][0].next_value= true
      board.array[3][2].next_value= true

      board.array[0][0].alive = true
      board.array[0][1].alive = true
      board.array[0][2].alive = false
      board.array[0][3].alive = false
      board.array[1][0].alive = true
      board.array[1][1].alive = true
      board.array[1][2].alive = false
      board.array[1][3].alive = false
      board.array[2][0].alive = true
      board.array[2][1].alive = true
      board.array[2][2].alive = false
      board.array[2][3].alive = false
      board.array[3][0].alive = false
      board.array[3][1].alive = false
      board.array[3][2].alive = true
      board.array[3][3].alive = false
board.next_generation




binding.pry
