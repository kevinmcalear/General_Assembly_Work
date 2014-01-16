def convert_to_fahrenheit(degrees_c)
  return ((degrees_c.to_f * 9.0) / 5.0) + 32
end
def convert_to_kelvin(degrees_c)
  return degrees_c + 273.15
  end

  
  puts "Would you like to convert a temp to farrenheight or kelvin?"
  response = gets.chomp.downcase
  puts "Enter a Temp to convert"
  answer = gets.chomp.to_f

  if response == "farrenheight"
    puts convert_to_fahrenheit(answer)
  elsif response == "kelvin"
    puts convert_to_kelvin(answer)
  else
    puts "Not a valid response!"
  end

