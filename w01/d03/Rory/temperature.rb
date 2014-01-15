def convert_to_fahrenheit (celsius)
	fahrenheit = celsius * (9/5) + 32
	return fahrenheit
end

def convert_to_kelvin (celsius)
	kelvin = celsius + 273.15
	return kelvin
end

puts "What is the temperature in Celsius?"
temp = gets.chomp.to_i
puts "Do you want to convert the temperature to Fahrenheit or Kelvin?"
choice = gets.chomp.downcase
if choice == "fahrenheit"
	answer = convert_to_fahrenheit (temp)
else
	answer = convert_to_kelvin (temp)
end
puts "The converted temperature is #{answer}."

