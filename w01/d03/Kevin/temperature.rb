def convert_to_fahrenheit(c)
  f = ((c * 9.0) / 5.0) + 32.0
  return f
end

def convert_to_kelvin(c)
  k = c + 273.15
  return k
end

puts "Give me a temperature in Celsius please."
temp = gets.chomp.to_f

puts "Now tell me if you want to convert it into Kelvin Or Fahrenheit by typing 'K' or 'F'"
conversion = gets.chomp.downcase

if conversion == "k"
  k_temp = convert_to_kelvin(temp)
  puts "#{temp} Celsius is #{k_temp} Kelvin."
elsif conversion =="f"
  f_temp = convert_to_fahrenheit(temp)
  puts "#{temp} Celsius is #{f_temp} Fahrenheit."
else
  puts "You didn't listen to me buttface... I'm done."
end