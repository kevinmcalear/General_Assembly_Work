puts "What is the current temperature?"
temp = gets.chomp.to_i

puts "Is the AC Functional? (Yes/ No)"
ac = gets.chomp.downcase

puts "What temperature do you wish it was?"
desired_temp = gets.chomp.to_i

if ac == "yes" && (temp>desired_temp)
	puts "Turn on the A/C Please"
elsif ac == "no" && (temp>desired_temp)
	puts "Fix the A/C now! It's hot!"
else ac == "no" && (temp<desired_temp)
	puts "Fix the A/C whenever you have a chance... It's cool..."
end

