class Calculator
  def add(a, b)
    return a + b
  end

  def subtract(a,b)
    return a - b
  end

  def power(a,b)
    return a ** b
  end

  def sum(array)
    if array.size == 0
      return 0
    else
      return array.reduce(0) {|running_total, e| running_total + e}
    end
  end

  def multiply(*number)
    return number.inject(1, :*)
  end

  def factorial(number)
    if number > 0
      return (1..number).reduce(:*)
      #another option – recursion
      #calling factorial within the factorial method
      #return number * factorial(number-1)
    else
      return 1
    end
  end

end
