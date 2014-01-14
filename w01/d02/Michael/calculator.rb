
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


puts "Welcome to the Ruby Calculator.  What would you like to do?", 
	"(A)ddition",
	"(S)ubtraction",
	"(M)ultiplication",
	"(D)ivision"
	"Square (R)oot", 
	"(E)xponent", 
	"(Q)uit"
ans = gets.chomp.downcase

puts "What is the first number?"
first_num = gets.chomp.to_i
puts "What is the second number?"
second_num = gets.chomp.to_i

CASE ans
	when "a"	
		add(first_num, second_num)
	when "s"
		subtract(first_num, second_num)
	when "m"
		multiplication(first_num, second_num)
	when "d"
		division(first_num, second_num)
	when "r"
		sqrt(first_num, second_num)
	when "e"
		exponent(first_num, second_num)
	else puts "Thank you for using Ruby Calculator"
end

	