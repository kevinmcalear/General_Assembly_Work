#Drinking age
def drinking_age(age)
  if age>=21
    return true
  else
    return false
  end
end

#Air conditioning
def ac_action(current_temp, acfunc, wish_temp)
  if acfunc && (current_temp > wish_temp)
    return "Turn on the A/C please"
  elsif !acfunc && (current_temp > wish_temp)
    return "Fix the A/C now! It's hot!"
  elsif !acfunc && (current_temp <= wish_temp)
    return "Fix the A/C whenever you have the chance... It's cool..."
  else
    return "You're flyin high, bro!"
  end
end

#Prime numbers
def is_prime?(int)
  for i in (1...int)
    if int.gcd(i) > 1
      return false
    end
  end
  return true
end

#test primes
puts "1 is prime? #{is_prime?(1)}"
puts "2 is prime? #{is_prime?(2)}"
puts "4 is prime? #{is_prime?(4)}"
puts "20 is prime? #{is_prime?(20)}"
puts "29 is prime? #{is_prime?(29)}"