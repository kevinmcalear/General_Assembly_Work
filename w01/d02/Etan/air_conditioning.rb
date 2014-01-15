puts "What is the current temp?"
temp = gets.chomp.to_i

puts "Is the AC working? Yes or no?"
working = gets.chomp.downcase

puts "What is your preferred temp?"
pref = gets.chomp.to_i

if working = "yes" && temp > pref
	puts "Turn on the AC please!"
elsif 
	working = "no" && temp > pref
	puts "Fix the A/C now!  It's hot!"
elsif 
	working = "no" && temp < pref
	puts "Fix the A/C whenever you have the chance...  It's cool..."
end

