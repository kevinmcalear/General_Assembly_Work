# Calculator Program by Nicholas Bundy

def add(num1, num2)
  return num1 + num2
end 

def subtract(num1, num2)
  return num1 - num2
end

def multiply(num1, num2)
  return num1 * num2
end

def divide(num1, num2)
  return num1/num2
end

def exp(num1, num2 = 2)
  return num1 ** num2
end

def sqrt(number)
  x = 0 
  while x * x != number
    x += 1
  end
  return x
end