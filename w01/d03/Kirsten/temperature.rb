def convert_to_kelvin(degrees_c)
    return degrees_c + 273.15
  end

def convert_to_fahrenheit(degrees_c)
  return ((degrees_c * 9) / 5) + 32
end

puts "Please input a temperature in degrees celsius."
degrees_c = gets.chomp.to_f
puts "Would you like to convert this to kelvin or fahrenheit?"
choice = gets.chomp

if choice == "kelvin"
    puts "The temperature is #{convert_to_kelvin(degrees_c)} degrees kelvin."
elsif choice == "fahrenheit"
    puts "The temperature is #{convert_to_fahrenheit(degrees_c)} degrees fahrenheit."
else 
  puts "I didn't understand that."
end