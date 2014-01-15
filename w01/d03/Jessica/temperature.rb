def convert_to_fahrenheit(celcius)
 return "#{(( celcius.to_f * 9 ) / 5) + 32}"
end

def convert_to_kelvin(celcius)
  return "#{celcius.to_f + 273.15}"
end

puts "Would you like to convert a temperature to fahrenheit or kelvin?"
response = gets.chomp.downcase
puts "Enter temp to convert:"
answer = gets.chomp.to_f


if response == "celcius"
  puts convert_to_fahrenheit(answer)
elsif response == "kelvin"
  puts convert_to_kelvin(answer)
else
  puts "error"
end