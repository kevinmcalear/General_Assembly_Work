class Calculator
  def add(a, b)
    a + b 
  end
  def subtract(a, b)
    a - b
  end
  def power(a, b)
    a ** b
  end
  def sum(a)
    a.reduce(0, :+) 
  end
  def multiply(*a)
    a.reduce(:*)
  end
  def factorial(a)
    if a > 0
      ## number * factorial(number - 1) this is recursion
      (1..a).reduce(:*)
    else
      return 1
    end
  end
end