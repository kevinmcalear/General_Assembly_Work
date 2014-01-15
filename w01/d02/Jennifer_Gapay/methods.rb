def drinking_age(number)
	if number < 21
	puts "Get outta here kid"
elsif number > 21
	puts "Come on in!"
	return true
end
end


def ac_action(current, functional, desired)
if functional == "Yes" && current > desired
	return "Turn on the A/C Please"
elsif functional == "no" && currrent > desired
	return "Fix the A/C now!  It's hot!"
else
	return "Fix the A/C whenever you have the chance .. It's cool ..."
end
end

def is_prime(number)
	if number < 1
		return false 
	end

	divisor = 2
	while number % divisor != 0
		divisor += 1
		if number == divisor
			return true
		end
	end
	return false
end