puts "********WELCOME TO MY CALCULATOR********"
puts 
puts "please tell me what you want to do:"
puts "(b)asic calculation (a)dvanced calculation or (q)uit"
input = gets.chomp

if input == "b"
  puts "Please tell me if you want to:"
  puts "(a)dd (s)ubtract (m)ultiply (d)ivide or (b)ack"
  basic_input = gets.chomp
elsif input == "a"
  puts "Please tell me if you want to:"
  puts "(a)dd (s)ubtract (m)ultiply (d)ivide"
  new_input = gets.chomp
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
  puts added_num
when "s"
  puts "Tell me the first number you want."
  num_one = gets.chomp.to_i
  puts "Now the number you want to subtract by please."
  num_two = gets.chomp.to_i
  subtracted_num = num_one - num_two
  puts subtracted_num

when "m"
puts "Tell me the first number you want."
  num_one = gets.chomp.to_i
  puts "Now the number you want to multiply by please."
  num_two = gets.chomp.to_i
  subtracted_num = num_one * num_two
  puts subtracted_num

when "d"
  puts "Tell me the first number you want."
  num_one = gets.chomp.to_i
  puts "Now the number you want to divide by please."
  num_two = gets.chomp.to_i
  subtracted_num = num_one / num_two
  puts subtracted_num

else

end

