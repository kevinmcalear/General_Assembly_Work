def convert_to_fahrenheit(degrees_c)
  return ((degrees_c * 9.0) / 5.0) + 32
end

def convert_to_kelvin(degrees_c)
  return degrees_c + 273.15
end

puts "Would you like to convert a temperature to fahrenheit or kelvin?"
response = gets.chomp.downcase
puts "Enter temp to convert:"
answer = gets.chomp.to_f

if response == "fahrenheit"
  puts "Temperature in f is #{convert_to_fahrenheit(answer)}"
elsif response == "kelvin"
  puts convert_to_kelvin(answer)
else
  puts "Not a valid response! Goodbye."
end