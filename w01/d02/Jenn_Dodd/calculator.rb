calc = "basic"

if calc == "basic" 
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
end
