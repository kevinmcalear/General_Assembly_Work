# Drinking age
def drinking_age(age)
  if age < 21
    puts "You are too young!"
    return false
  else
    puts "Have a drink!"
    return true
  end
end

# Air Conditioning
def ac_action(current, function, desired)
  if function = "yes" && current > desired
    return "Turn on the A/C Please"
  elsif function != "yes" && current > desired
    return "Fix the A/C now!  It's hot!"
  else
    return "Fix the A/C whenever you have the chance...  It's cool..."
  end
end

# Prime Numbers
def is_prime?(n)
  x = Math.sqrt(n).to_i
  counter = 2
    if (n<=1)
      return false
    end
  while(counter <= x)
    if (n%counter == 0)
      return false
    end
    counter = counter + 1    
  end
  return true
end

def is_prime?(n)
  if n < 1
    return false
  end
  divisor = 2
  while n % divisor != 0
    divisor += 1
    if n == divisor
      return true
    end
  end
  return false
end




# Twisted fizzbuzz
def twisted_fizzbuzz(number)
 range = (0..number.to_i).to_a


