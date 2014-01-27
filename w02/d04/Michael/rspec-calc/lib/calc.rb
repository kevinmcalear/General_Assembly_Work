class Calculator
  
  def add(num1, num2)
    return num1 + num2
  end 

  def subtract(num1, num2)
    return num1 - num2
  end 

  def power(num1, num2)
    return num1 ** num2
  end 

  def sum(num_array)
    sum = num_array.reduce(0,:+)
  end

  def multiply(*numbers)
    return numbers.reduce(1,:*)
  end

  def factorial(number)
    if number == 0
      return 1
    end 
    
    ##Option 1
    # index = number -1
    # result = number
    # while index> 0
    #   result*= index
    #   index-=1
    # end 
    # return result
    
    ##Option 2
    # 1.upto(number).reduce(:*)

    ##Option 3 Using recursion
    return number * factorial(number-1)

  end 

  

end