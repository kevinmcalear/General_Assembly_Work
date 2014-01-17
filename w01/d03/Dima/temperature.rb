def convert_to_farenheit
  puts "Please enter temperature in Celcius"
  c_temp = gets.chomp.to_i
  f_temp = c_temp * (9/5) + 32
  puts "Farenheit temperature is #{f_temp}"
end

def convert_to_kelvin
  puts "Please enter temperature in Celcius"
  c_temp = gets.chomp.to_i
  k_temp = c_temp + 273
  puts "Kelvin temperature is #{k_temp}"
end

puts "Would you like to convert Celcius to Farenheit or to Kelivn? Please enter f or k or q to quit"
input = nil
while input != "q"
  input = gets.chomp
  if input == "k"
    convert_to_kelvin
  elsif input == "f"
    convert_to_farenheit
  elsif input == "q"
    puts "godd bye"
  else
    puts "please enter k or f"
  end
  break
end
