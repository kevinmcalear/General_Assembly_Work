def drinking_age?(age)
    if age < 21
      puts "Too young"
      return false
    else
      puts "Old enough for poor decisions"
      return true
    end
end


def ac_action (temp, ac_working, desired_temp)
  if ac_working && temp > desired_temp
    return "Turn on the A/C please."
  elsif !ac_working && temp > desired_temp
    return "Fix the AC. It's hot!"
  else
    return "Fix the A/C whenever you have the chance...  It's cool..."
  end

end

def is_prime?(num)
  return false if num ==1
  div = num -1

  while(div > 1)
    return false if (num % div ==0)
    div -= 1
  end

  true
end


def twisted_fizzbuzz(num)
  div = num

  while(div > 1)
    div -= 1

    if div % 5 == 0 && div % 3 != 0
      puts div
    elsif div % 3 == 0 && div % 5 != 0
      puts div
    end
  end

  nil
end










