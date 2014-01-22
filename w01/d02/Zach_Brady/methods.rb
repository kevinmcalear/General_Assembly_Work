###1. Drinking age
def drinking_age(age)
  if age < 21
    puts "You can't drink"
    return false
  else
    puts "Drink up!"
    return true
  end
end


###2. Air Conditioning
def ac_action(current_temp, ac, desired_temp)
  if ( ac == "yes" || ac == "Yes" || ac == "y" )
    ac = true
  else
    ac = false
  end
  if ac == true && current_temp > desired_temp
    puts "Turn on the A/C please. "
  elsif ac == false && current_temp > desired_temp
    puts "Fix the A/C now! It's hot!"
  else
    puts "Fix the A/C whenever you have the chance...  It's cool..."
  end
end


###3.  Prime Numbers
def is_prime?(x)
  y = 2
  while y < x
    if x % y == 0
      puts "This number is not prime. "
      return false
    else
      y += 1
    end
  end
  puts "This number is prime!"
  return true
end

is_prime?(486847)


###Bonus. Twisted Fizzbuzz
def twisted_fizzbuzz(x)
  i = 0
  while i <= x
    if ( i % 3 == 0 || i % 5 == 0 ) && !( i % 3==0 && i % 5 == 0 )
      puts i
    end
    i += 1
  end
end