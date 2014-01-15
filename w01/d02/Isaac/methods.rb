def drinking_age?(an_age)
  if an_age < 21
    puts "you're underage"
    return false
  else
    puts "you're of drinking age"
    return true
  end
end

def ac_action(current_temp, functional, desired_temp)
  if (functional==true) && (current_temp>desired_temp)
    return "Turn on the AC please"
  elsif (functional==false) && (current_temp>desired_temp)
    return "Fix the AC now it is hot"
  else
    return "Fix the AC whenever you want"
  end
end

def is_prime?(int)
  i = 2
  while i < int
    if int % i == 0
     return false
   else
     return true
   end
   i += 1
  end
end



def twisted_fizzbuzz(num)
  i = 1
  while i < num
    puts i if ((i < num) && (i % 3 == 0)) && !((i < num) && (i % 5 == 0))
    puts i if ((i < num) && (i % 5 == 0)) && !((i < num) && (i % 3 == 0))
    i += 1
  end
end

puts twisted_fizzbuzz(45)




