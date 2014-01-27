class Calculator
  def initialize
    array = []
  end
  def add(a,b)
    a + b
  end

  def subtract(a,b)
    a - b
  end

  def power(a,b)
    a**b
  end

  def sum(num_array)
      num_array.reduce(0, :+)
  end

  def multiply(*numbers)
    numbers.reduce(:*)
  end

  def factorial(i)
    (1..i).reduce(:*)||1
  end
end