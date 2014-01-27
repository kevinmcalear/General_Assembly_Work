class Calculator
  def add(num1, num2)
    return num1 + num2
  end

  def subtract(num1, num2)
    return num1 - num2
  end

  def power(num1, num2)
    return num1**num2
  end

  def sum(array)
    array.inject(0, :+)
  end

  def multiply(*numbers)
   numbers.reduce(:*)
  end

  def factorial(num)
    if num == 0
      return 1
    else
    return num.downto(1).reduce(:*)
    ## return number * factorial(number - 1)
  end
  end

end