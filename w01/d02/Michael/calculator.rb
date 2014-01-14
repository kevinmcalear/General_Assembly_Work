
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

def exponent (base, power)
	print "The exponent of Base:#{base} and Power:#{power} is #{base ** power}"
	return base ** power

end