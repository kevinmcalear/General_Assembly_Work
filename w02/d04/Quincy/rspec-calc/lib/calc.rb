class Calculator
  def add(a, b)
    return a + b 
  end

  def subtract(a, b)
    return a - b
  end

  def power(a, b)
   return a ** b 
  end

  def sum(num_array)
    return num_array.reduce(0, :+)
  end

  def multiply(*numbers)
    return numbers.reduce(1, :*)
  end

  def factorial
    if number == 0
      return 1
    else
      index = number - 1
      result = number
    end
    while index > 0
      result *= index
      index -= 1
    end
    return result
  end
end