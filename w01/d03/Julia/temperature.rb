=begin
Celsius Temperature Converter
- This should be done in a new file called temperature.rb
- Write `convert_to_fahrenheit` and `convert_to_kelvin` methods 
that will each take a temperature in Celsius as a parameter and return 
the converted temperature.
- Once you have these methods written, a program that does the following:
  - The user should be asked to enter a temperature in Celsius
  - The user should be asked to enter if they want to convert the temperature to Fahrenheit or Kelvin
  - After these have been entered, the user should be told what the converted temperature is
=end 

def convert_to_farenheit(celsius_temp)
	puts "Your temperature in Farenheit is: #{celsius_temp * (9/5) + 32and}º"
	return celsius_temp * ((9/5) + 32)
end

def convert_to_kelvin(celsius_temp)
	puts "Your temperature in Kelvin is: #{celsius_temp + 273.15}º"
	return celsius_temp + 273.15 
end

puts "Please enter a temperature in Celsius."
celsius_temp = gets.chomp.to_f
puts "Would you like to convert this temperature to farenheit or Kelvin? \n
Please enter 'F' or 'K'"
desire_to_convert = gets.chomp.upcase!
if desire_to_convert == "F"
	convert_to_farenheit(celsius_temp)
elsif desire_to_convert == "K"
	convert_to_kelvin(celsius_temp)
else
	puts "oops! that's not a valid option!"
end

