def convert_to_fahrenheit(degrees_c)
  return ((degrees_c * 9) / 5.0) + 32
end

def convert_to_kelvin(degrees_c)
  return degrees_c + 273.15
end

puts "would you like to convert a temperature to farenheint or kelvin?"
response = gets.chomp.downcase
puts "Enter a temp to convert"
answer = gets.chomp.to_f

if response == "fahrenehit"
  puts "Temp in f is #{convert_to_fahrenheit(answer)}"
elsif response == "kelvin"
  puts convert_to_kelvin(answer)
else
  puts "Invalid response"
end
