def drinking_age?(age)
  if age < 21
    puts "Don't drink, youngling"
  elsif age > 21
    puts "Let's get shwasted"
  else
    puts "Please try again"
end

def ac_action(cur_temp, working?, des_temp)
  if working? == true && cur_temp > des_temp
    puts "Turn on AC please"
  elsif working? == false && cur_temp > des_temp
    puts "Fix the A/C now! It's hot!"
  elsif working? == false && cur_temp < des_temp
    puts "Fix the A/C whenever you have the chance... it's cool..."
  else
    puts "Sorry didn't get that."
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