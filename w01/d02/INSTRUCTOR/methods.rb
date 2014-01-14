def drinking_age?(age)
  if age < 21
    puts "UNDERAGE!!! ALERT!"
    return false
  else
    puts "PARTAYYYY"
    return true
  end
end

def ac_action(current, functional, desired)
  if functional == "yes" && current > desired
    return "Turn on the ac please!"
  elsif functional == "no" && current > desired
    return "Fix the AC now its hot"
  else
    return "Fix it whenevs"
  end
end

def is_prime?(number)
  if number < 1
    return false
  end

  divisor = 2
  while number % divisor != 0
    divisor += 1
    if number == divisor
      return true
    end
  end
  return false
end