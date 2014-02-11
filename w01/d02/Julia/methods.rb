=begin# Methods

Create a file called methods.rb. In it, create a method for each of the following scenarios.

###1. Drinking age
- Define a method `drinking_age?`that takes, as an argument, an age.
- If the age is less than 21, print an appropriate message, then return `false`
- If the age is over 21, print a different message, then return `true`

###2. Air Conditioning
- Define a method `ac_action` that takes, as arguments, the current temperature, whether the A/C is functional or now, and the desired temperature .
    - If the air conditioner is functional and the current temperture is above the the desired temperature... return the string "Turn on the A/C Please"
    - If the air conditioner is non-functional and the current temperture is above the the desired temperature... return the string "Fix the A/C now!  It's hot!"
    - If the air conditioner is non-functional and the current temperture is below the the desired temperature... return the string "Fix the A/C whenever you have the chance...  It's cool..."

###3.  Prime Numbers
- Define a method `is_prime?` that takes, as an argument, an integer
- If the number is prime, return `true`
- If the number is not prime, return `false`
- Make your method work at least for numbers from 1 - 25. Ideally for any number.
=end

#Drinking Age Methods

def drinking_age?(age)
	if age < 21
		puts "Rats! Not old enough yet."
		return false
	else
		puts "Great! Grab a beer."
		return true

	end
end

#Air Conditioning

def ac_action(current_temp, functional, desired_temp)
	if functional == "yes" && current_temp > desired_temp
		return "Turn on the A/C please"
	elsif functional == "no" && current_temp > desired_temp
		return "Fix the A/C now! It's too hot."
	else
		return "Fix the A/C when you have time"
	end
end

#Prime Numbers
#2 – square root of number
def is_prime?(integer)
	sqroot = Math.sqrt(integer).to_i
	if (integer / integer == 1) && (integer / 1 == integer)
		counter = 2
		while counter < sqroot
			if integer % counter > 0
				counter + 1
				puts "Your number is prime"
				return true
			else 
				puts "your number is not prime"
				return false
			end
		end
	else
		puts "your number is not prime"
		return false
	end
end

#another approach
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

=begin
Write a method `twisted_fizzbuzz` that takes a single number as an argument.

* It should print out numbers divisible by 3 that are less than that number
* It should print out numbers divisible by 5 that are less than that number
* It should NOT print out numbers divisible by both 3 and 5 that are less than that number
* It should not return anything
	
=end

def twisted_fizzbuzz(number)
	divider = number
	while number % divider == 0
		divider - 1
		puts 

