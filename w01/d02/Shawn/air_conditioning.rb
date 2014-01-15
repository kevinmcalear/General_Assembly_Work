puts "What's the temperature"
room_temp = gets.chomp.to_i

puts "Is the a/c functioning?"
ac_fun = gets.chomp

puts "What temperature would you like the room to be?"
desired_temp = gets.chomp.to_i

if ac_fun == "yes" && room_temp > desired_temp
    puts "Turn on the a/c please"

  elsif ac_fun == "no" && room_temp > desired_temp
    puts "Fix the a/c now! It's hot!"

  elsif ac_fun == "no" && room_temp < desired_temp
    puts "Fix the a/c whenever you have the chance... It's cool..."
  else
    nil
end