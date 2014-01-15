# ### Celsius Temperature Converter
# - This should be done in a new file called temperature.rb
# - Write `convert_to_fahrenheit` and `convert_to_kelvin` methods that will each take a temperature in Celsius as a parameter and return the converted temperature.
# - Once you have these methods written, a program that does the following:
#   - The user should be asked to enter a temperature in Celsius
#   - The user should be asked to enter if they want to convert the temperature to Fahrenheit or Kelvin
#   - After these have been entered, the user should be told what the converted temperature is

def convert_to_fahrenheit(temp)
  return ((temp * 9) /5) + 32
end

def convert_to_kelvin(temp)
  return temp + 273.15
end

puts "Enter a temperature in Celsius:"
c = gets.chomp.to_f
puts "Convert the temp entered to (F)ahrenheit or (K)elvin?"
ans = gets.chomp.downcase

if ans == "f"
   puts convert_to_fahrenheit(c)
elsif ans == "k"
  puts convert_to_kelvin(c)
else
  puts "error, try again"
end

