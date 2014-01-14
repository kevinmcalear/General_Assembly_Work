puts "Calculator"
puts "(a)rithmetic or (q)uit?"
choice1 = gets.chomp
while choice1 == "a"
	puts "(a)ddition, (s)ubtraction, (m)ultiplication, or (d)ivision?"
	choice2 = gets.chomp
	puts "What's the first number?"
	num_1 = gets.chomp.to_i
	puts "What's the second number?"
	num_2 = gets.chomp.to_i

	if choice2 == "a"
		result = num_1 + num_2
		puts "Result is #{result}"
	elsif choice2 == "s"
		result = num_1 - num_2
		puts "Result is #{result}"
	elsif choice2 == "m"
		result = num_1 * num_2
		puts "Result is #{result}"
	else
		result = num_1 / num_2
		puts "Result is #{result}"
	end
	puts "(a)rithmetic or (q)uit?"
	choice1 = gets.chomp
	puts "quit"
end

