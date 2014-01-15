def menu
	puts "Calculator"
	puts "Arithmetic, advanced, trig, factorial or quit?"
	option = gets.chomp.downcase
	return option
end

choice1 = menu
while choice1 != "quit"
	case choice1
		when "arithmetic"
			puts "(a)ddition, (s)ubtraction, (m)ultiplication, or (d)ivision?"
			choice2 = gets.chomp
			puts "What's the first number?"
			num_1 = gets.chomp.to_i
			puts "What's the second number?"
			num_2 = gets.chomp.to_i

			case choice2
				when "a"
					result = num_1 + num_2
					puts "Result is #{result}"
				when "s"
					result = num_1 - num_2
					puts "Result is #{result}"
				when "m"
					result = num_1 * num_2
					puts "Result is #{result}"
				else
					result = num_1 / num_2
					puts "Result is #{result}"
			end
		when "advanced"
			puts "(e)xponents or (s)quare roots?"
			choice2 = gets.chomp
			case choice2
				when "e"
					puts "what is the base?"
					num_1 = gets.chomp.to_i
					puts "What is the exponent?"
					num_2 = gets.chomp.to_i
					result = num_1 ** num_2
					puts "Result is #{result}"
				else
					puts "what do you want to get the square root of?"
					num_1 = gets.chomp.to_i
					result = Math.sqrt(num_1)
					puts "Result is #{result}"
			end
		when "trig"
			puts "(s)in, (c)os, or (t)an?"
			choice2 = gets.chomp
			puts "what is the angle?"
			angle = gets.chomp.to_i
			case choice2
				when "s"
					result = Math.sin(angle)
					puts "Result is #{result}"
				when "c"
					result = Math.cos(angle)
					puts "Result is #{result}"
				else
					result = Math.tan(angle)
					puts "Result is #{result}"
			end
		when "factorial"
			puts "what is the number?"
			choice2 = gets.chomp.to_i
			x = choice2 - 1
			while x >1
				choice2 = choice2 * x
				x -= 1
			end
			puts "Result is #{choice2}"

		else
			puts "quit"
		end

		choice1 = menu
end

