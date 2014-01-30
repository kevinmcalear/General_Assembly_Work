class Calculator
  def add(a,b)
    return a+b
  end
  def subtract(a,b)
    a-b
  end
  def power(a,b)
    return a**b
  end
  def sum(a)
    return a.reduce(0, :+)
  end
  def multiply(*a)
    return a.reduce(1, :*)
  end
  def factorial(num)
    if num == 0
      return 1
    end
    1.upto(num).reduce(:*)
    #   return num * factorial(num-1)
    # end
  end
end