#puts "What is your age?"
#age = gets.chomp.to_i
def drinking_age?(age)
  if age < 21
    puts "only 21 and over"
    return false
  else age > 21
    puts "okay, what drink are we having?"
    return true
end
end


#Air Conditioning
def ac_action(temp, func, desired)
  if func == "yes" && temp > desired
  return "Turn on A/C please"
elsif func == "no" && temp > desired
  return "Fix A/C now! It's hot!"
else #func == "no" && temp < desired (not needed, else is control)
  return "Fix the A/C whenever you have the chance...Its cool..."
end
end 


#Prime Numbers (1-25)
#def is_prime?(x)
  #while x == 1 || 3 || 5 || 7 || 11 || 19 
   #puts "true"
  #end
  #puts "false" 

  def is_prime?(number)
    if number < 1
      return false
    end
    divisor = 2
    while number % divisor != 0
      divisor += 1
      if number == divisor
        return true 
      end
    end
    return false
  end









