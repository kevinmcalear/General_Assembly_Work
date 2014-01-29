
def convert_to_kelvin(degrees_c)

      puts temp_C + 273.15 

end


def convert_to_fahrenheit(degrees_c)

    puts temp_C * 9 / 5 + 32

end

prompt = "Please enter a temperature in Celsius..."

puts "Would you like to convert to (K)elvin or (F)ahrenheit?"
conversion = gets.chomp.upcase!

if conversion == "K"
  convert_to_kelvin(prompt)
  puts "The converted temperature is #{temp_Kelvin} Kelvins"

elsif conversion == "F"
  convert_to_fahrenheit(prompt)
  puts "The converted temperature is #{temp_fahrenheit} degrees fahrenheit"

else
  puts "error"
  
  end

