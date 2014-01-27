class Calculator
  def add(first_num, second_num)
    return first_num + second_num
  end
  def subtract(first_num, second_num)
    return first_num - second_num
  end
  def power(base, power)
    return base ** power
  end
  def sum(num_array)
    num_array.reduce(0) {|sum, number| sum + number}
  end
  def multiply(num_array)
    num_array.reduce(1, :*)
  end
  def factorial(number)
    (1..number).reduce(1, :*)
  end
    
end