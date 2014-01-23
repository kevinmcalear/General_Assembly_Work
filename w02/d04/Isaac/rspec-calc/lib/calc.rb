class Calculator
  def initialize()
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
    return array.inject(0) { |sum, e| sum + e }
  end
  def multiply(*nums)
    return nums.inject(1) { |res, e| res * e }
  end
  def factorial(num)
    return 1 if num == 0
  #   idx = num - 1
  #   result = num
  #   while idx > 0
  #     result *= idx
  #     idx -= 1
  #   end
  #   return result
  # end
    # return 1.upto(num).reduce(*)
    return num * factorial(num - 1) #recursion
  end
end