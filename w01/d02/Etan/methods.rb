def drinking_age?(age)
	if age < 21
		puts "You're less than 21!"
		return false
	else age > 21
		puts "You're super old and dying!"
		return true
	end
end


def ac_action(current, working, desired)
	if working == "yes" && current > desired
		return "Turn on the AC please!"
	elsif 
		working == "no" && current > desired
		return "Fix the A/C now!  It's hot!"
	elsif 
		working == "no" && current < desired
		return "Fix the A/C whenever you have the chance...  It's cool..."
	end
end



def is_prime?(prime)

	array = (2...prime).to_a   

	array.each do |x|
		if prime % x == 0
			return false
		else
			return true
		end
	end
end









take all numbers between 1 and prime and put them in an array. 