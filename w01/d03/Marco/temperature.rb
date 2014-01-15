def convert_to_fahrenheit(degrees_c)

  return ((degrees_c * 9.0) / 5.0) + 32

end

def convert_to_kelvin(degrees_c)

  return degrees_c + 273.15

  end




puts "Please enter a temperature in Celsius."

  degrees_c = gets.chomp.to_f

puts "Would you like to convert this to (F)ahrenheit or (K)elvin?"

  units = gets.chomp.downcase

  case units
  when "f"
    puts convert_to_fahrenheit(degrees_c)
  when "k"
    puts convert_to_kelvin(degrees_c)
  end
