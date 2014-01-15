def drinking_age?(age)
	if age < 21
		puts "you're underaged"
		return false
	else
		puts "you're old enough"
		return true
end

def ac_action(temp, func, target)
	if (temp > target) && func
		puts "Turn on the A/C Please"
	elsif (temp > target) && func
		puts "Fix the A/C now!  It's hot!"
	else (temp < target) && func
		puts "Fix the A/C whenever you have the chance...  It's cool..."
	end
end

def is_prime?(num)
	
	if num <= 1
		return false
	end
	if num == 2
		return true
	end

	divisor = 2
	while (num%divisor != 0)
		divisor += 1
		if divisor == num
			return true
		end
	end	
	return false
		
end