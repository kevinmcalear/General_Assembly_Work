def fahrenheit(temp, type)
  case type
  when "c"
    return convert_f_to_c(temp)
  when "k"
    return convert_f_to_k(temp)
  else 
    return temp
  end
end

def celsius(temp, type)
  case type
  when "f"
    return convert_c_to_f(temp)
  when "k"
    return convert_f_to_k
  else 
    return temp(temp)
  end
end

def kelvin(temp, type)
  case type
  when "c"
    return convert_k_to_c(temp)
  when "f"
    return convert_k_to_f(temp)
  else 
    return temp
  end
end



def convert_c_to_f(temp)
  ((temp*9)/5) +32
#Multiply by 9, then divide by 5, then add 32
end

def convert_f_to_c(temp)
  (temp - 32)*5/9
end

def convert_c_to_k(temp)
  temp + 273
end

def convert_k_to_c(temp)
  temp - 273
end

def convert_k_to_f(temp)
  ((temp - 273) *9/5) +32
end

def convert_f_to_k(temp)
  (temp - 32) *5/9 +273
end

print "Input: C, F, or K? "
input = gets.chomp.downcase

print "temp: "
temp = gets.chomp.to_f

print "output: C, F, or K? "
output = gets.chomp.downcase

answer = ""

case input
when "c"
  answer = celsius(temp, output)
when "f"
  answer = fahrenheit(temp, output)
when "k"
  answer = kelvin(temp, output)
end

puts"#{answer.round(2)} degrees"

# print "Temp in C: "
# temp = gets.chomp.to_f
# print "F or K? "
#  if gets.chomp.downcase == "f"
#   puts convert_to_fahrenheit(temp)
# elsif gets.chomp.downcase == "k"
#   puts convert_to_kelvin
# else
#   puts"Error"
# end
