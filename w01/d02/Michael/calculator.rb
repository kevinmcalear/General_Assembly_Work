
def add (first_num, second_num)
	print "The sum is #{first_num + second_num}"
	return first_num+second_num
end

def subtract (first_num, second_num)
	print "The difference is #{first_num - second_num}"
	return first_num - second_num
end

def multiplication (first_num, second_num)
	print "The product is #{first_num * second_num}"
	return first_num * second_num
end

def division (first_num, second_num)
	print "The dividend is #{first_num / second_num}"
	return first_num / second_num
end

def sqrt (first_num)
	print "The Square Root of #{first_num} is #{Math.sqrt(first_num)}"
	return Math.sqrt(first_num)
end

def exponent (first_num, second_num)
	print "The exponent of Base:#{base} and Power:#{power} is #{base ** power}"
	return base ** power
end

def sin (first_num)
	print "The sin of #{first_num} is #{Math.sin(first_num)}"
	return Math.sin(first_num)
end

def tan (first_num)
	print "The tan of #{first_num} is #{Math.tan(first_num)}"
	return Math.tan(first_num)
end

def cos (first_num)
	print "The cos of #{first_num} is #{Math.cos(first_num)}"
	return Math.cos(first_num)
end

##http://www.rodrigoalvesvieira.com/the-most-beautiful-factorial-method/
def factorial(first_num)
	print "The factorial of #{first_num} is #{1 if first_num.zero?
	1.upto(first_num).inject(:*)}"
	return 1 if first_num.zero?
	1.upto(first_num).inject(:*)
end


program = 1

while program ==1
puts
puts
puts "Welcome to the Ruby Calculator.  What would you like to do?", 
	"(A)ddition",
	"(S)ubtraction",
	"(M)ultiplication",
	"(D)ivision",
	"Square (R)oot", 
	"(E)xponent", 
	"(sin)",
	"(tan)",
	"(cos)",
	"(F)actorial"
	"(Q)uit"
ans = gets.chomp.downcase

	if ans == "q"
		puts "Thank you for using Ruby Calculator"
		program = 0
	

	elsif program == 1
		puts "What is the first number?"
		first_num = gets.chomp.to_i
		puts "What is the second number? (if required)"
		second_num = gets.chomp.to_i

		case ans
		when "a"	
w			add(first_num, second_num)
		when "s"
			subtract(first_num, second_num)
		when "m"
			multiplication(first_num, second_num)
		when "d"
			division(first_num, second_num)
		when "r"
			sqrt(first_num)
		when "e"
			exponent(first_num, second_num) 	
		when "sin"
			sin(first_num)
		when "tan"
			tan(first_num)
		when "cos"
			cos(first_num)
		when "f"
			factorial(first_num)
		end
	end	
end

	