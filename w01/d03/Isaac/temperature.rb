def convert_to_fahrenheit(c_num)
  result = (c_num.to_f * (9.0/5.0) ) + 32
  return result
end

def convert_to_kelvin(c_num)
  result = c_num.to_f + 273.15
  return result
end

puts "Please enter temperature in Celsius"
temp = gets.chomp.to_f
puts "Would you like to convert to Kelvin or Fahrenheit?"
choice = gets.chomp.downcase
result = 0

if choice == "kelvin"
  result = convert_to_kelvin(temp)
  puts result
elsif choice == "fahrenheit"
  result = convert_to_fahrenheit(temp)
  puts result
else
  puts "you're lame"
end

