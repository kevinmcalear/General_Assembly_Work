class Calculator


  def add(a, b)
    return a + b
  end

  def subtract(a, b)
    return a - b
  end

  def power(number, power)
    return number ** power
  end

  def sum(array)
    # return array.reduce(0) {|sum, element| sum + element}
    return array.reduce(0, :+)
  end

  def multiply(*numbers)
    return numbers.reduce(1, :*)
  end

  def factorial(number)
    # if number == 0
    #   return 1
    # else
    #   return (1..number).reduce(1, :*)
    # end

    return number == 0 ? 1 : (1..number).reduce(1, :*)
  end
end
