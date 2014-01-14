  puts "********WELCOME TO MY CALCULATOR********"
  puts 
  puts "please tell me what you want to do:"
  puts "(b)asic calculation (a)dvanced calculation or (q)uit"
  input = gets.chomp

if input == "b"
  puts "Please tell me if you want to:"
  puts "(a)dd (s)ubtract (m)ultiply (d)ivide or anything else to go back"
  basic_input = gets.chomp
elsif input == "a"
  puts "Please tell me if you want to:"
  puts "(e)xponents (s)quare roots or anything else to go back"
  advanced_input = gets.chomp
else 
  puts "Thanks for using me!"
end

case basic_input

when "a"
  puts "Tell me the first number you want to add."
  num_one = gets.chomp.to_i
  puts "Now the number you want to add please."
  num_two = gets.chomp.to_i
  added_num = num_one + num_two
  puts "Your Answer Was: #{added_num}"
when "s"
  puts "Tell me the first number you want."
  num_one = gets.chomp.to_i
  puts "Now the number you want to subtract by please."
  num_two = gets.chomp.to_i
  subtracted_num = num_one - num_two
  puts "Your Answer Was: #{subtracted_num}"

when "m"
puts "Tell me the first number you want."
  num_one = gets.chomp.to_i
  puts "Now the number you want to multiply by please."
  num_two = gets.chomp.to_i
  subtracted_num = num_one * num_two
  puts "Your Answer Was: #{subtracted_num}"

when "d"
  puts "Tell me the first number you want."
  num_one = gets.chomp.to_i
  puts "Now the number you want to divide by please."
  num_two = gets.chomp.to_i
  subtracted_num = num_one / num_two
  puts "Your Answer Was: #{subtracted_num}"

else

end

case advanced_input

when "e"
  puts "Tell me the base number you want."
  num_one = gets.chomp.to_i
  puts "Now the exponent you want to use please."
  num_two = gets.chomp.to_i
  exponent_num = num_one ** num_two
  puts "Your Answer Was: #{exponent_num}"

when "s"
  puts "Tell me number you want to square."
  num = gets.chomp.to_i
  squarert_num = Math.sqrt(num) 
  puts "Your Answer Was: #{squarert_num.to_i}"

else

end