class Calculator
  def add(a,b)
    return a + b
  end

  def subtract(a, b)
    return a -b
  end

  def power(a,b)
    return a**b
  end

  def sum(num_array)
    # return sum = num_array.reduce(:+)
    # if sum == nil
    #   return 0
    # else
    #   return sum
    return num_array.reduce(0, :+)
  end
 
  def multiply(*numbers)  #* means take any number of parameters
    numbers.reduce(1, :*numbers)
    #or numbers.reduce(:*)
  end

  def factorial(a)
    if a == 0
      return 1
    end
    
    # index = a -1
    # result = a
    # while index > 0
    #   result *= index
    #   index -= 1
    # end
    # return result  OR : 

    1.upto(a).reduce(:*)
  end
end