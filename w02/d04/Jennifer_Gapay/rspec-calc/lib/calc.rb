class Calculator


def add (a, b)
  return a + b
end

 def subtract (a, b)
  return a - b
 end

  def power (a, b)
    return a ** b
  end

  def sum (num_array)
    return num_array.reduce(0, :+)
  end

  def multiply (*numbers)
    return numbers.reduce(:*)
  end

  def factorial (number)
    if number == 0
      return 1
    end

    # Jessica's solution
    # 1.upto(number).reduce(:*)

    ## Nicholas' Solution
    return number * factorial(number - 1)

  ## Isaac's Solution
  #   index = number - 1
  # result = number
  #while index > 0
  # result * = index
  #   index -= 1
  # end
  # return result
end

end