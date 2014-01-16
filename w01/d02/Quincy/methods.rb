def drinking_age(age)
  if age < 21
  puts "Do you know what a beer tastes like??"
  return false
  else
    puts "Remember to sip wine with a pinky out"
    return true
  end
end

drinking_age(22)

def ac_action(current, func, desire)
  if func == "Yes" && current > desire
    return "Turn on the A/C please"
  elsif func == "No" && current > desire
    return "Fix the A/C now, it's hot!!"
  else func == "No" && current < desire
    return "Fix the A/C whenever you have the chance...  It's cool..."
end
end

ac_action(100, "No", 85)

Prime.each(100) do |prime|

def is_prime?(integer)
  if number < 1
    return false
  end

divisor = 2
while number % divisor !=0
  divisor += 1
  if number == divisor
    return true
  end
end
return false
end