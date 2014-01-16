def convert_to_fahrenheit(x)
  return ((x * 9.0) / 5.0) + 32
end

def convert_to_kelvin(x)
  return x + 273.15
end

puts "Would you like to convert a temperature to Fahrenheit or Kelvin?:"
response = gets.chomp.downcase
puts "Enter temp to convert:"
x = gets.chomp.to_f


if response == "fahrenheit" 
  puts convert_to_fahrenheit(x)
elsif response == "kelvin"
  puts convert_to_kelvin(x)
else
  puts "Not a valid response! Goodbye!"
end
