def convert_to_celsius(t)
  t = (t.to_f - 32.0) * (5.0/8.0)
  puts t.round(1)
  return t
end

def convert_to_fahrenheit(t)
  original_t = t.to_f
  t = (t.to_f * (8.0/5.0)) + 32.0
  puts "#{original_t} degrees Celsius is about #{t.round(1)} degrees Fahrenheit. "
  return t
end

def convert_to_kelvin(t)
  original_t = t.to_f
  t = t.to_f + 273.15
  puts "#{original_t} degrees Celsius is about #{t.round(1)} Kelvins. "
  return t
end

puts "Please enter a temperture in Celsius. "
temp = gets.chomp
puts "Do you want to convert the temperature to Kelvins or degrees fahrenheit?"
system = gets.chomp

if system == "Kelvin" || system == "kelvin" || system == "Kelvins" || system == "k"
  convert_to_kelvin(temp)
elsif system == "Fahrenheit" || system == "fahrenheit" || system == "F" || system == "f"
  convert_to_fahrenheit(temp)
else
  puts "Sorry I didn't get that. "
end
  