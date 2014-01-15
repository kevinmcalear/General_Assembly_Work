puts "Welcome to Calculator"
puts "Choose wisely!"
calc = "start"

while calc != "Q"
	puts "(B)asic, (A)dvanced, (Q)uit"
	calc = gets.chomp.upcase
	case
	when calc == "B" 
		puts "Choose one: (A)dd, (S)ubtract, (M)ultiply, (D)ivide"
		basic_choice = gets.chomp.upcase
		case
		when basic_choice == "A"
			puts "First number to add:"
			first = gets.chomp.to_f
			puts "Second number to add:"
			second = gets.chomp.to_f
			puts "Your result: #{first + second}"
		when basic_choice == "S"
			puts "Number to subtract from:"
			first = gets.chomp.to_f
			puts "Number to subtract:"
			second = gets.chomp.to_f
			puts "Your result: #{first - second}"
		when basic_choice == "M"
			puts "First number to multiply:"
			first = gets.chomp.to_f
			puts "Second number to multiply:"
			second = gets.chomp.to_f
			puts "Your result: #{first * second}"
		else
			puts "Number to divide:"
			first = gets.chomp.to_f
			puts "Number to divide by:"
			second = gets.chomp.to_f
			puts "Your result: #{first / second}"
		end
	when calc == "A" 
		puts "Choose one: (E)xponent, (S)quare root"
		adv_choice = gets.chomp.upcase
		if adv_choice == "E"
			puts "Base number:"
			first = gets.chomp.to_f
			puts "Power to raise to:"
			second = gets.chomp.to_f
			puts "Your result: #{first**second}"
		else
			puts "Number to square root:"
			num = gets.chomp.to_f
			numsqrt = Math.sqrt(num)
			puts "Your result is: #{numsqrt}"
		end
	else
		puts "Fine, but quitters never win!"
		calc = "Q"
	end
end

