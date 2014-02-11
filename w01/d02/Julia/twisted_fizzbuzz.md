Write a method `twisted_fizzbuzz` that takes a single number as an argument.

* It should print out numbers divisible by 3 that are less than that number
* It should print out numbers divisible by 5 that are less than that number
* It should NOT print out numbers divisible by both 3 and 5 that are less than that number
* It should not return anything

def twisted_fizzbuzz(number)
	number_2 = 0
	case
		when number % 3 == 0