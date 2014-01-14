print "Current temp: "
temp = gets.chomp.to_i
print "Is the A/C working? (y/n) "
working = gets.chomp.downcase

if working == "y" || working == "yes"
  ac_working = true
else
  ac_working = false
end

print "What temp do you want it to be? "
desired_temp = gets.chomp.to_i

if ac_working && temp > desired_temp
  puts "Turn on the A/C please."
elsif !ac_working && temp > desired_temp
  puts "Fix the AC. It's hot!"
else
  puts "Fix the A/C whenever you have the chance...  It's cool..."
end

