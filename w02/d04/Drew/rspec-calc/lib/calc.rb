class Calculator

  def add(x, y)
    x + y
  end

  def subtract(x, y)
    subtract = x - y
  end

  def power(x, y)
    power = x ** y
  end

  def sum(num_array)
     num_array.reduce(0, :+)
  end

  def multiply(*numbers) # takes all arguments and put it in an array
    numbers.reduce(1, :*) #multiplies all numbers via the reduce method. starts the count at 1. 
  end

  def factorial(number)
    if number == 0
      return 1
    else
    1.upto(number).reduce(:*)
  end


    # if number == 0
    #   return 1
    # end
    # index = number - 1
    # result = number
    # while index > 0
    #   result *= index
    #   index -= 1
    # end
    # return result
  end

end