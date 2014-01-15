# # Methods

# Create a file called methods.rb. In it, create a method for each of the following scenarios.

# ###1. Drinking age
# - Define a method `drinking_age?`that takes, as an argument, an age.
# - If the age is less than 21, print an appropriate message, then return `false`
# - If the age is over 21, print a different message, then return `true`

# ###2. Air Conditioning
# - Define a method `ac_action` that takes, as arguments, the current temperature, whether the A/C is functional or now, and the desired temperature .
#     - If the air conditioner is functional and the current temperture is above the the desired temperature... return the string "Turn on the A/C Please"
#     - If the air conditioner is non-functional and the current temperture is above the the desired temperature... return the string "Fix the A/C now!  It's hot!"
#     - If the air conditioner is non-functional and the current temperture is below the the desired temperature... return the string "Fix the A/C whenever you have the chance...  It's cool..."

# ###3.  Prime Numbers
# - Define a method `is_prime?` that takes, as an argument, an integer
# - If the number is prime, return `true`
# - If the number is not prime, return `false`
# - Make your method work at least for numbers from 1 - 25. Ideally for any number.

def drinking_age?(age)
  if age < 21
    puts "not old enough"
    return false
  else
    puts "Congrats, drink soemthing"
    return true
  end
end

def ac_action(temp, func, desired)
  if (func == "yes") && (temp > desired)
    puts "Turn on the A/C Please"
    return "Turn on the A/C Please"
  elsif (func == "no") && (temp > desired)
    puts "Fix the A/C now!  It's hot!"
    return "Fix the A/C now!  It's hot!"
  else (func == "no") && (temp < desired)
    puts "Fix the A/C whenever you have the chance...  It's cool..."
    return  "Fix the A/C whenever you have the chance...  It's cool..."
  end
end

def is_prime?(int)
  require "prime"
  if int.prime?
    puts "true"
    return true
  else
    puts "false"
    return false
  end
end

drinking_age?(5)
drinking_age?(40)

ac_action(60, "yes", 50)
ac_action(60, "no", 50)
ac_action(60, "no", 70)

is_prime?(6)
is_prime?(7)