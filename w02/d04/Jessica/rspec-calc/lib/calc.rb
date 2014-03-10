class Calculator
  def initialize
    @add = []
  end
  
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
    sum = num_array.reduce(0, :+)
  end

  def multiply(*nums)
    result = nums.reduce(1, :*) 
  end

  def factorial(n)
    return 1 if n.zero?
    1.upto(n).reduce(:*)
  end

end