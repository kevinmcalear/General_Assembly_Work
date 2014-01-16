def convert_to_fahrenheit(celsius)
  fahrenheit = celsius * ( 9/5 ) + 32
  return fahrenheit
end

def convert_to_kelvin(celsius)
  kelvin = celsius + 273.15
  return kelvin
end


puts "Enter the tempurate in Celsius"
temp = gets.chomp.to_f

puts "The tempurature in fahrenheit is: #{convert_to_fahrenheit(temp)},
the tempurate in kelvin is: #{convert_to_kelvin(temp)}"

exit