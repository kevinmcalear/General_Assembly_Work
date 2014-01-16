
def convert_to_fahrenheight(degrees_c)
	return ((degrees_c * 9.0) / 5.0) + 32
end

def convert_to_kelvin(degrees_c)
	puts degrees_c + 273.15
end

puts "Would you like to convert a temperature to fahrenheight or kelvin?"
response = gets.chomp.downcase
puts "Enter temp to convert:"
answer = gets.chomp.to_f

if response == "fahrenheight"
	puts convert_to_fahrenheight(answer)
elsif response == "kelvin"
	puts convert_to_kelvin(answer)
else
	puts "not a valid response.  Goodbye!"
end