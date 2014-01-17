print "What the current temp is? "
current_temp = gets.chomp.to_i
print "Is AC working?  "
ac_status = gets.chomp

print "What temp would you like to have? "
desired_temp = gets.chomp.to_i

if ac_status == "yes" && current_temp > desired_temp
  puts "Turn on the AC Please"
elsif ac_status != "yes" && current_temp > desired_temp
  puts "Fix the AC now! It's hot!"
else 
  puts "Fix AC whenever you have the chance... It's cool..."
end
    