class Calculator

  def add(x,y)
    x + y
  end

  def subtract(x, y)
    x - y
  end

  def power(x, y)
    x ** y
  end

  def sum(array)
      array.reduce(0, :+)
  end

  def multiply(array)
    array.reduce(1, :*) 
  end

  def factorial(num)
    if num == 0
      1
    else
      num * factorial(num-1)
    end
  end
end
