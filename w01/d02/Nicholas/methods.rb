def drinking_age?(age)
  if age < 21
    puts "I'm sorry, but you are not of age to drink. Have a cola on us!"
    return false
  else 
    puts "How about a beer on the house!"
    return true
  end

def ac_action(current, functional, desired)
  if functional == "yes" && current > desired
  puts "Turn on the A/C please"
  elsif functional == "no" && current > desired
  puts "Fix the A/C now! It's hot! HURRY!"
  elsif functional == "no" && current < desired
  puts "Fix the A/C whenever you have the chance... It's cool..."
  else
  puts "Don't turn on the A/C"
  end
end

def is_prime?(num)
  if num <= 1
    return false
  end
    div = 2
    while (num % div != 0)
      div += 1
      if div == num 
        return true
      end
    end
    return false
end

