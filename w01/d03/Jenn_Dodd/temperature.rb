def convert_to_fahrenheit(degrees_c)
	return ((degrees_c * 9.0)/5.0) + 32
end

def convert_to_kelvin(degrees_c)
	return (degrees_c + 273.15)
end

puts "What is the temperature in Celcius?"
degrees_c = gets.chomp.to_i
puts "Choose what it should be converted to: (F)ahrenheit or (K)elvin"
choice = gets.chomp.upcase

if choice == "F"
	puts "Your result: #{convert_to_fahrenheit(degrees_c)}"
else
	puts "Your result: #{convert_to_kelvin(degrees_c)}"
end