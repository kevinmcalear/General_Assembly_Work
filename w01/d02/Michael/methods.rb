def drinking_age?(age)
	age = age.to_i
	if age <21 
		puts "Person is underage"
		return false
	else 
		puts "Person can drink"
		return true
	end	
end

def ac_action(cur_temp, ac_func, desire_temp)
	cur_temp = cur_temp.to_i
	desire_temp = desire_temp.to_i


	if ac_func== true && cur_temp>desire_temp
		return "Turn on the A/C Please"
	elsif ac_func==false && cur_temp>desire_temp
		return "Fix the A/C now!  It's hot!"
	else ac_func==false && cur_temp<desire_temp
		return "Fix the A/C whenever you have a chance.. It's cool.."	
	end
end

def is_prime?(int)
	x = int.to_i
	
	return x.prime?
	
	# x = int.to_i
	
	# while x > y
	# 	prime.each do |prime|
	# 	y = prime
	# 	end 
	# end 
	
	# if x==y 
	# 	return true
	# else 
	# 	return false	
	# end

end

drinking_age?(10)
drinking_age?(21)
drinking_age?(50)

ac_action(100, true, 90)
ac_action(100, false, 100)
ac_action(90, false, 100)

is_prime?(1)
is_prime?(2)
is_prime?(3)
is_prime?(4)
is_prime?(5)
is_prime?(6)
is_prime?(7)








