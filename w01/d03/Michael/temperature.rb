def convert_to_fahrenheit (c_temp)
	f_temp = c_temp *9 /5 +32
	puts "#{c_temp} degrees in Celsius is #{f_temp} degrees Fahrenheit"
end

def convert_to_kelvin (c_temp)
	k_temp = c_temp + 273.15
	puts "#{c_temp} degrees in Celsius is #{k_temp} degress  Kelvin"
end


puts "Please enter a temperature in Celsius"
c_temp = gets.chomp.to_f

puts "Would you like to convert the temperature to (F)ahrenheit or (K)elvin"
convert = gets.chomp.downcase

if convert == "f"
	convert_to_fahrenheit(c_temp)
elsif convert == "k"
	convert_to_kelvin(c_temp)
else puts "Please select a scale to convert to."
end 


