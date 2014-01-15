def convert_to_fahrenheit(celsius)
  fahrenheit = celsisus*9/5 + 32
  return fahrenheit
end

def convert_to_kelvin(celsius)
  kelvin = celsius + 273.15
  return kelvin
end  


puts "Please enter a temperature in Celcius:"
celsius = gets.chomp.to_f
puts "Would you like to convert to Fahrenheit (F) or Kelvin (K)?"
temp = gets.chomp.upcase

if (temp == "F")
  new_temp = convert_to_fahrenheit(celsius)
elsif (temp == "K")
  new_temp = convert_to_kelvin(celsius)
end

  puts "The temperature is " + new_temp.to_s + "#{temp.upcase}."


