class Calculator
  def initialize
  end

  def add(num1, num2)
    return num1 + num2
  end

  def subtract(num1, num2)
    return num1 - num2
  end

  def power(num1, num2)
    return num1 ** num2
  end

  def sum(array)
    if array.empty?
      return 0
    else
      return array.inject {|sum, num| sum + num}
    end
  end

  def multiply(num1, num2, num3 = 1)
    return num1 * num2 * num3
  end

  def factorial(n)
    return 1 if n.zero?
    1.upto(n).inject(:*)  
  end
end