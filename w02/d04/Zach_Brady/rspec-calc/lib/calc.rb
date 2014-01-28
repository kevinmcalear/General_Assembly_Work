class Calculator
  def add(a, b)
    return a + b
  end

  def subtract(a, b)
    return a - b
  end

  def power(a, b)
    return a**b
  end

  def sum(num_array)
    return num_array.reduce(0, :+)
  end

  def multiply(*numbers)
    return numbers.reduce(1, :*)
  end

  def factorial(num)
    if num == 0
      return 1
    end

    ##### My solution
    # i = num - 1
    # result = num
    # while i > 0
    #   result *= i
    #   i -= 1
    # end
    # return result

    ##### Recursive solution
    return num * factorial(num - 1)
  end
end