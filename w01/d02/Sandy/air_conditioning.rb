puts "What is the current temperature?"
current_temp = gets.chomp.to_i
puts "Is the A/C on?"
ac = gets.chomp!
puts "What temperature would you like it to be?"
desired_temp = gets.chomp.to_i

#case AC
if ac == "yes" && current_temp > desired_temp
  puts "Turn on A/C please"
elsif ac == "no" && current_temp > desired_temp
  puts "Fix A/C now! It's hot!"
else ac == "no" && current_temp < desired_temp
  puts "Fix the A/C whenever you have the .chance...Its cool..."
end

#if ac_working && temp > desired_temp
#elsif !ac_working