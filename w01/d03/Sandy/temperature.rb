def convert_to_fahrenheit(degrees_c)
  return ((degrees_c *9.0)/5.0) + 32
end

def convert_to_kelvin(degrees_c)
  puts degree_c + 273.15
end

prompt = "Enter tempt to convert"
puts "Would you like to convert into C or F?"
response = gets.chomp.downcase

#if response == "C"
 # puts prompt
  #answer = gets.chomp.to_f
  #puts convert_to_fahrenheit(answer)
#elsif response =="F"
  #puts prompt
  #answer = gets.chomp.to_f
  #puts convert_to_kelvin(answer)
#else
  #puts "not a valid response, goodbye"
#end 

if response == "fahrenheit"
puts convert_to_fahrenheit
elsif reponse =="kelvin"
  puts convert_to_fahrenheit
else
  puts "Not a response"
end
