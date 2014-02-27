class Calculator
  def add(first, second)
    first + second
  end

  def subtract(first, second)
    first - second
  end


  def power(base, exponent)
    base**exponent
  end

  def sum(arr)
    arr.reduce(0, :+)
  end

  def multiply(*multipliers)
    multipliers.reduce(1, :*) 
  end

  def factorial(num)
    (1..num).reduce(1, :*) 
  end

  def gcd(*nums)
    divs = nums.reduce(divisors(nums[0])) do |cds, num| 
      cds & divisors(num)
    end

    divs.sort[-1]
    # (divisors(first) & divisors(second))[-1]
  end

  def divisors(num)
    div_arr = []
    (1..num).each do  |i|
      if num % i == 0
        div_arr << i
      end
    end

    div_arr
  end
end