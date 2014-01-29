class Calculator

  def add(a,b)
    return a + b
  end

def subtract(a,b)
  return a - b
end

def power(a,b)
  return a ** b
end

def sum(array)
  return array.reduce(0, :+)
end

  def multiply(*numbers)
    return numbers.reduce(:*)
    #return array.reduce(:*)
  end

  def factorial(number)
    if number == 0
      return 1
    else
    1.upto(number).reduce(:*)
  end
    # if number == 0 || number == 1
    #   return 1
    # elsif number == 2
    #   return 2
    # else
    #   counter = number - 1
    #   while counter > 1
    #     number = number * counter
    #     counter -= 1
    #   end
    #   return number
    #end
  end
  
  def gcd(a, b)
    array = []
    counter = 1
    if a > b
      while counter < a
        if a % counter == 0 && b % counter == 0
          array.push(counter)
        end
        counter += 1
      end
        return array[-1]
  else
    while counter < b
            if a % counter == 0 && b % counter == 0
          array.push(counter)
        end
        counter += 1
      end
        return array[-1]
      end
    #return array[-1]
  end
end





