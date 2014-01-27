require 'pry'
class Calculator
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
    return array.reduce(0, :+)
  end
  def multiply(array)
    return array.reduce(:*)
  end
  def factorial(number)
    if x == 0
      return 1
    else
      # counter = x-1.to_i
      # while counter > 1
      #   x = x * counter
      #   counter -=1
      # end
      # return x
      return (1..number).reduce (:*)
    end
  end
#   def gcd(num1, num2)
#     x = 0
#     binding.pry
#     (1..( [num1,num2].min )).to_a.each do |number|
#       if (number % num1 == 0) && (number % num2 == 0)
#         x = number
#       end
#     end
#     return x
#   end
# end