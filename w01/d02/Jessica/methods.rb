def drinking_age?(age)
  if age < 21 
    puts "You cannot drink legally"
    return false
  else 
    puts "You can drink"
    return true
  end
end

def ac_action(curr_temp, func, desired)
  if func == "yes" && curr_temp > desired
    return "Turn on the A/C Please"
  elsif func == "no" && curr_temp > desired
    return "Fix the A/C now!  It's hot!"
  else 
    return  "Fix the A/C whenever you have the chance...  It's cool..."
  end
end

def is_prime?(int)
  require "prime"
  if int.prime?
      puts "true"
    else
      puts "false"
    end
end

drinking_age?(24)
drinking_age?(5)

ac_action(89, "no", 78)
ac_action(89, "yes", 78)
ac_action(78, "yes", 79)

is_prime?(6)
is_prime?(7)




