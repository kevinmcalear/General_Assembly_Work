def drinking_age(age)
  if(age < 21)
    puts "#{age} is not over the legal drinking age."
    return false
  else
    puts "#{age} is over the legal drinking age."
    return true
  end
end


def ac_action(temp, functional, desired)
  if functional && (temp > desired)
    return "Turn on the A/C please."
  elsif !functional && (temp > desired)
    return "Fix the A/C now! It's hot!"
  else
    return "Fix the A/C whenever you have the chance...It's cool"
  end
end


def is_prime?(number)
  x = Math.sqrt(number).to_i
  counter = 2
  if(number<=1)
    return false
  end
  while(counter <= x)
    if (number%counter == 0)
      return false
    end
    counter = counter + 1
  end
  return true
end


def twisted_fizzbuzz(number)
  x=1
  while(x < number)
    if(x % 3 == 0) && (x % 5 ==0)
      puts ""
    elsif (x % 3 == 0)
      puts x
    elsif(x % 5 == 0)
      puts x
    end
    x = x + 1
  end
end