def drinking_age?(age)
  if age < 21
    puts "Don't drink, youngling"
    return false
  else
    puts "Let's get shwasted"
    return true
  end
end

def ac_action(cur_temp, working?, des_temp)
  if working? == true && cur_temp > des_temp
    return "Turn on AC please"
  elsif working? == false && cur_temp > des_temp
    return "Fix the A/C now! It's hot!"
  elsif working? == false && cur_temp < des_temp
    return "Fix the A/C whenever you have the chance... it's cool..."
  else
    return "Sorry didn't get that."
  end
end

def is_prime?(i)
require "prime"
  if i.prime? == true
    return true
  else
    return false
  end
end
