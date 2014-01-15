def drinking_age?(age)
 age = age
  if age < 21
    puts "You're a fetus."
    return false
  else
    puts "Be thirsty my friend."
    return true
  end
end

def ac_action(current_temp, ac_working, desired_temp)
  if ac_working == "yes"
    true
  else
    false
  end
  if ac_working == true && current_temp > desired_temp
    return "Turn on the A/C Please"
  elsif ac_working != true && current_temp > desired_temp
    return "Fix the A/C now! It's hot!"
  else
    return "Fix the A/C whevener you have the chance... It's cool..."
  end
end

def is_prime?(number)
x = number.to_i
counter = 2
while counter < x
  if (x % counter) == 0
    counter = x
    n = false
  else
    counter +=1
    n = true
  end
end
return n
end