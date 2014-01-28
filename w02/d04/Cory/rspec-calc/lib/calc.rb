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
  def sum(numbers)
   numbers.reduce(0, :+)
  end
  def multiply(*numbers)
     return numbers.reduce(1, :*)
  end
  def factorial(num)
     if num == 0
      return 1
    else
     return num.downto(1).reduce(:*)
   end
  end
end