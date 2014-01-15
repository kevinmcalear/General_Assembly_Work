puts "What is the current temperature?"
temp = gets.chomp.to_i
puts "Is your AC running? true / false "
ac_running = gets.chomp
puts "What is your desired temperature?"
desired_temp = gets.chomp.to_i
if (ac_running == "true") && (temp > desired_temp)
  puts "Turn on the AC please"
elsif (ac_running == "false") && (temp > desired_temp)
  puts "Fix the AC it is hot"
else 
  puts "Fix the AC whenever you have the chance, it's cooL"
end
