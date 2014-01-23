# ### Celsius Temperature Converter
# - This should be done in a new file called temperature.rb
# - Write `convert_to_fahrenheit` and `convert_to_kelvin` methods that will each take a temperature in Celsius as a parameter and return the converted temperature.
# - Once you have these methods written, a program that does the following:
#   - The user should be asked to enter a temperature in Celsius
#   - The user should be asked to enter if they want to convert the temperature to Fahrenheit or Kelvin
#   - After these have been entered, the user should be told what the converted temperature is

def convert_to_fahrenheit(degrees_c)
	return ((degrees_c * 9.0) / 5.0) + 32
end

def convert_to_kelvin(degrees_c)
	puts degrees_c + 273.15
end

puts "Would you like to convert your temperature to fahrenheit or kelvin?"
response = gets.chomp.downcase
puts "Enter temperature to convert:"
answer = gets.chomp.to_f

if response == "fahrenheit"
	puts convert_to_fahrenheit(answer)
elsif response == "kelvin"
	puts convert_to_kelvin(answer)
else
	puts "not a valid response.  Goodbye!"
end
