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
    sum = num_array.reduce(0, :+)
  end

  def multiply(*numbers) #or num_array
    sum = numbers.reduce(1, :*)
  end

  def factorial(num)
    if num == 0
      return 1
    end
    1.upto(num).reduce(:*)
    #num * factorial(number - 1)
    #################
    # index = number -1
    # result = number
    # while index > 0
    #   result *= index
    #   index -= 1
    # end
    #   return result
    #############
    #1.upto(num).reduce(:*)
  end
end