require 'prime'

def drinking_age?(age)
  if age < 21
    puts "Oops, you're under the age of 21!"
    return false
  else
    puts "Congrats, you're 21 or over."
    return true
  end
end


def ac_action(current_temp, ac_working, desired_temp)
  if ac_working == "yes" && current_temp > desired_temp
    # puts "Turn on the A/C Please"
    return "Turn on the A/C Please"
  elsif ac_working == "no" && current_temp > desired_temp
    # puts "Fix the A/C now! It's hot!"
    return "Fix the A/C now! It's hot!"
  elsif ac_working == "no" && current_temp < desired_temp
    # puts "Fix the A/C whenever you have the chance...  It's cool..."
    return "Fix the A/C whenever you have the chance...  It's cool..."
  else
  end
end

puts ac_action(50, "yes", 40)
puts ac_action(50, "yes", 70)
puts ac_action(50, "no", 40)
puts ac_action(50, "no", 70)
puts


def is_prime?(integer)
  if integer == 2 || integer == 3 || integer == 5 || integer == 7 || integer == 11 || integer == 13 || integer == 17 || integer == 19 || integer == 23
    return true
  else
    return false
  end
end


def is_prime2?(integer)
  prime_check = false
  Prime.each(10_000_000) do |prime|
    if integer == prime
      return true
      prime_check = true
    end
  end

  if prime_check != true
    return false
  end
end


puts is_prime2?(5)
puts is_prime2?(24)
puts is_prime2?(1523423)
puts is_prime2?(2)
puts is_prime2?(4)

