def drinking_age?(age)
  if age < 21
    puts "You're too young"
    return false
  else
    puts "you're good"
    return true
  end
end
drinking_age?(19)


def ac_action(temp, mode, desire)
  if mode == "yes" && temp.to_i > desire.to_i
    return "Turn on the AC Please"
  elsif mode != "yes" && temp.to_i > desire.to_i
    return "Fix the AC now! It's hot!"
  else 
    return "Fix AC whenever you have the chance... It's cool..."
  end
end
    puts ac_action(14, "yes", 50)
    

  def is_prime?(num)
    i = 2
    while i < num 
      if num % i == 0 && i != num
          return false
          i += 1
      else
          return true
      end
    end
end

puts is_prime?(5)