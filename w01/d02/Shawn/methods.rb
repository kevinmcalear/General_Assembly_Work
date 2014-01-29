#methods.rb 
require 'prime'

def drinking_age?(age)
  if age < 21
    puts "Dude, You're too young to drink..."
    return false
  else
    puts "I'll see you at the bar because you're over 21"
    return true
  end
end

drinking_age?(14)


def ac_action(current_temp, ac_fun, desired_temp)
  if ac_fun == "yes" && current_temp > desired_temp
    return "Turn on the a/c please..."
  elsif ac_fun == "no" && current_temp > desired_temp
    return "Fix the a/c now! It's hot!"
  elsif ac_fun == "no" &&  current_temp < desired_temp
    return "Fix the a/c/ whenever you have the chance...It's cool..."
  else
    return "error"
  end
end

def is_prime?(int)
    if Prime.prime?(int) == true
      puts "Prime!"
    else
      puts "Not Prime!"
  end
end

def twisted_fizzbuzz(num)
  




is_prime?(5)
is_prime?(9)