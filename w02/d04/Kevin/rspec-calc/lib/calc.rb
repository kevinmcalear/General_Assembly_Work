class Calculator

  def add(num_one, num_two)
    return num_one + num_two
  end

  def subtract(num_one, num_two)
    return num_one - num_two
  end

  def power(num_one, num_two)
    return num_one ** num_two
  end

  def sum(array)
    array.reduce(0, :+)
  end

  def multiply(*the_numbers)
    # total = 1
    # the_numbers.each { |number| total = total * number }
    # return total
    the_numbers.reduce(:*)
  end

  def factorial(number)
    if number == 0 
      return 1
    else
  # total = 1
  # number.downto(1) { |n| total *= n }
  # return total
  number.downto(1).reduce(:*)

end
end

end