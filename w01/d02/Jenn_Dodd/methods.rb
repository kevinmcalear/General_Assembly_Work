require 'prime'

def drinking_age(age)
	if age < 21
		puts "Oops you're under the age of 21."
		return false
	else 
		puts "Congrats, you are 21 or over."
		return true
	end
end

drinking_age(21)
drinking_age(18)
drinking_age(23)


def ac_action(current_temp, ac_working, desired_temp)
	if ac_working == "yes" && current_temp > desired_temp
		return "Turn on the AC please."
	elsif ac_working == "no" && current_temp > desired_temp
		return "Fix the AC now! It's hot!"
	elsif ac_working == "no" && current_temp < desired_temp
		return "Fix the AC whenever. It's cool."
	else
		return "AC works, but you don't need it!"
	end
end

puts ac_action(78, "yes", 69)
puts ac_action(55, "no", 69)
puts ac_action(78, "no", 69)
puts ac_action(55)


def is_prime1?(integer)
	prime_check = false
	Prime.each(100) do |prime|
		if integer == prime
			return true
			puts "true"
			prime_check = true
		end
	end
	if prime_check != true
		puts "false"
		return false
	end
end

def is_prime?(number)
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

puts is_prime?(9)
puts is_prime?(2)
puts is_prime?(13)
puts is_prime?(24)
		


