def drinking_age? (age)
	if age < 21
		puts "Not 21"
		return false
	else
		puts "You can drink"
		return true
	end
end

def ac_action (temp, functional, desired_temp)
	if functional == true && (temp > desired_temp)
		return "Turn on the A/C Please"
	elsif functional == false && (temp > desired_temp)
		return "Fix the A/C now!  It's hot!"
	else
		return "Fix the A/C whenever you have the chance... It's cool..."
	end
end

def is_prime?(i)
	w = 2
	while i > 1
		if i%w == 0 && w != i
			return false
			w+=1
		else
			return true
		end
		
	end

end

