def convert_to_fahrenheit(cel)
	fahr = cel*(9.0/5)+32
end

def convert_to_kelvin(cel)
	kelvin = cel + 273.15
end

puts "Enter a temperature in celsius:"
celsius = gets.chomp.to_f

puts "Do you want to convert to fahrenheit(f) or kelvin(k)? "
if gets.chomp == "f"
	temp =  "#{convert_to_fahrenheit(celsius)} degrees Fahrenheit"
else temp = "#{convert_to_kelvin(celsius)} Kelvin"
end

puts "The temperature is #{temp}"