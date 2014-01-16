def convert_to_fahrenheit(temperature)
  puts ((degress_c * 9.0) / 5.0) + 32
end

def convert_to_kelvin(degrees_c)
  puts degrees_c + 273.15
end

puts "Would you like to convert a temp to fahrenheit or kelvin?"
response =  gets.chomp.downcase
puts "Would you like to convert a temperature to fahrenheit or kelvin?"
response =  gets.chomp.to_f

if response =="fahrenheit"
  puts convert_to_fahrenheit(answer)
elsif response == "kelvin"
  puts convert_to kelvin(answer)
else
  puts
end
    