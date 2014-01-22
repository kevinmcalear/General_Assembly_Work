puts "What is the current temperature? "
current_temp = gets.chomp.to_i

puts "Is the A/C working? "
ac = gets.chomp

if ( ac == "yes" || ac == "Yes" || ac == "y" )
  ac = true
else
  ac = false
end

puts "What is the desired temperature? "
desired_temp = gets.chomp.to_i

if ac == true && current_temp > desired_temp
  puts "Turn on the A/C please. "
elsif ac == false && current_temp > desired_temp
  puts "Fix the A/C now! It's hot!"
else
  puts "Fix the A/C whenever you have the chance...  It's cool..."
end