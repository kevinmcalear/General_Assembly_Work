puts "What temperature is it?:"
current_temp = gets.chomp.to_i
puts "Is the A/C functional? (Y/N):"
functional = gets.chomp
puts "What temperature do you want it to be?:"
wish_temp = gets.chomp.to_i

if functional == "true" && (current_temp > wish_temp)
  puts "Turn on the A/C please"
 elsif functional != "true" &&  (current_temp > wish_temp)
  puts "Fix the A/C now! It's hot!"
 elsif functional != "true" && (current_temp < wish_temp)
  puts "Fix the A/C whenever you have the chance. It's cool..."
end
