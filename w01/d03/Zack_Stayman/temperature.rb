
def from_fahrenheit(x)
return ((x - 32) * (5/9)).round
end

def from_kelvin(x)
return (x + 273.15).round
end

def to_kelvin(x)
  return (x - 273.15).round
end

def to_fahrenheit(x)
  return ((x * (9/5)) + 32).round
end

puts "What is the Temperature?"
temp = gets.chomp.to_f

puts "Is this temperature in Fahrenheit, Celsius, or Kelvin?"
base = gets.chomp

case base
when "Fahrenheit"
  puts "Do you want to convert to Celsius or Kelvin?"
  convert = gets.chomp
  case convert
  when "Celsius"
    x = from_fahrenheit(temp)
    puts x
  when "Kelvin"
    x = from_fahrenheit(temp)
    x = to_kelvin(x)
    puts x
  else
    puts "ERROR"
  end
when "Kelvin"
  puts "Do you want to convert to Celsius or Fahrenheit"
  convert = gets.chomp
  case convert
  when "Fahrenheit"
    x = from_kelvin(temp)
    x = to_fahrenheit(x)
    puts x
  when "Celsius"
    x = from_kelvin(temp)
    puts x
  else
    puts "ERROR"
  end
when "Celsius"
  puts "Do you want to convert to Kelvin or Fahrenheit?"
  convert = gets.chomp
  case convert
  when "Kelvin"
    x = to_kelvin(temp)
    puts x
  when "Fahrenheit"
    x = to_fahrenheit(temp)
    puts x
  else
    puts "ERROR"
  end
end
# puts "What is the temperature in Celsius?"
# temp_c = gets.chomp.to_f


# # puts "Do you want to convert to Kelvin or Fahrenheit?"
# # convert = gets.chomp

# # case convert
# # when "Kelvin"
# #   result = to_kelvin(temp_c)
# #   puts result
# # when "Fahrenheit"
# #   result = convert_to_fahrenheit(temp_c)
# #   puts result
# # else
# #   puts "I'm sorry, you must enter Kelvin or Fahrenheit"
# # end

