class Calculator
  # def initialize
  #   @add = add
  # end

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
  # total = array.reduce(:+)
  # if total == nil
  #   return 0
  # else 
  #   return total
  # end
  return array.reduce(0, :+)
end

# def multiply(nums)
#   return nums.reduce(:*)
# end

def multiply(*nums)
  return nums.reduce(:*)
end

def factorial(num)
  if num == 0
    return 1
  end

  # 1.upto(num).reduce(:*)

  num * factorial(num - 1)


  # index = num - 1
  # result = num
  # while index > 0 
  #   result *= 1
  #   index -= 1
  # end
  # return result

end


end

