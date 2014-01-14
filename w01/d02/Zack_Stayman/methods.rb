def drinking_age?(age)
  age = age.to_i
  if age < 21
    puts "You cannot drink"
    return false
  else
    puts "You can drink"
    return true
  end
end

def ac_action(temp, functional, desired)
  temp = temp.to_i
  desired = desired.to_i

  if functional == "yes"
    true
  else
    false
  end

  if functional == true && (temp > desired)
    return "Turn on the A/C please"
  elsif functional != true && (temp > desired)
    return "Fix the A/C now, it's hot"
  else
    return "Fix the A/C when you can"
  end
end

def is_prime?(number)
 x = number.to_i
 counter = 2.upto(x-1)
 while x % counter  != 0
  if (x % counter) == 0
    return false
  else
    return true
  end
 end
end
q = gets.chomp
b = is_prime?(q)
puts b


def is_prime?(number)
 x = number.to_i
 counter = 2.upto(x-1)
 while 
 end
 return n
end