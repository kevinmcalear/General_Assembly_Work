# puts "How old are you"

# patrons_age = gets.chomp.to_i

# def drinking_age?(patrons_age)
#   if patrons_age < 21
#     puts "Sorry, bud."
#     return false

#   else 
#     puts "Welcome, Friend!"
#     return true
# end

# end

# puts drinking_age?(patrons_age)


#______________________________________________________

# puts "What's the temperature?"
# current_temp = gets.chomp.to_i

# puts "Is your AC working?"
# working = gets.chomp.downcase

# puts "What is your desired temperature?"
# desired_temp = gets.chomp.to_i


# def ac_action(current_temp, working, desired_temp)
#   if current_temp > desired_temp && working == "yes"
#     return "Turn on the A/C Please"

#   elsif current_temp > desired_temp && working == "no"
#     return "Fix the A/C now!  It's hot!"

#   else #current_temp < desired_temp && working == "no"
#     return "Fix the A/C whenever you have the chance...  It's cool..."
      

#   end
    

# end

# puts ac_action(current_temp, working, desired_temp)


#______________________________________________________


puts "Give me a prime number"

number = gets.chomp.to_i


def is_prime?(number)
  counter = number - 1

  while number % counter != 0
    return true

  end

  puts false

end

puts is_prime?(number)





# def is_prime?(number)
#   if nunber < 1
#     return false
#   end

#   divisor = 2
#   while number % divisor !=0
#     divisor +=1
#     if number = divisor
#       return false
#     end
#   end
#   return false
# end

