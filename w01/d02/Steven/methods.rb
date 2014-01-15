# puts "begin!"

# def drinking_age?(age)
#   if age.to_i < 21
#     puts "Not old enough!"
#     return false
#   else
#     puts "Legal drinking age!"
#     return true
#   end
# end

# drinking_age?(15)

#AC
# def ac_action(temperature, ac, wish_temp)

# if temperature > wish_temp && ac 
#   puts "Turn on the A/C please"
# elsif !ac && temperature > wish_temp
#   puts "Fix the A/C now! It's hot!"
# else !ac && temperature < wish_temp
#   puts "Fix the A/C whenever you have the chance... it's cool..."
# end
# end

# ac_action(80, true, 75)

# #Prime
def is_prime?(value)
  x = 2
  while x < value
    if value % x == 0
      return false
    end
    x = x + 1
  end
  return true 
end

puts "#{is_prime?(6)}"


#if (value / value == 1 ) && (value /1 == value)
# Prime.prime?(2)   
# prime?(value, generator = Prime::Generator23.new) 

# def is_prime?(number)
#   if number < 1
#     return false
#   end
#   divisor = 2
#   while number % != 0
#     divisor += 1
#     if number == divisor
#       return true
#     end
#   end
#   return false
# end
