puts "What is the temperature?"
temp = gets.chomp.to_i
puts "Is the AC working (yes or no)"
ac = gets.chomp.downcase
puts "What temperature would you like it to be?"
temp_want = gets.chomp.to_i

case

	when ac == "yes" && temp > temp_want
		puts "Turn the AC on please"
	when ac == "no" && temp > temp_want
		puts "Fix the AC now! It's hot!"
	when ac == "no" && temp < temp_want
		puts "Fix the AC whenever you want... It's cool."
	when ac == "yes" && temp < temp_want
		puts "Turn the AC off!"
end