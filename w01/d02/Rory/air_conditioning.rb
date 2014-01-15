puts "What is the current temperature?"
curr_temp = gets.chomp.to_i
puts "Is the A/C functional?"
ac = gets.chomp.downcase
puts "What temperature do you wish it was?"
wish_temp = gets.chomp.to_i

if (ac == "yes") && (curr_temp > wish_temp)
	puts "Turn on the A/C Please"
elsif (ac == "no") && (curr_temp > wish_temp)
	puts "Fix the A/C now!  It's hot!"
else (ac == "no") && (curr_temp < wish_temp)
	puts "Fix the A/C whenever you have the chance... It's cool..."
end