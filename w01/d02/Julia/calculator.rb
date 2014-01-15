=begin	
#Calculator

###Objectives:
- Practice with functions, loops, conditions, user-input, switch/case

###Prompt
- You will be building a calculator.  A calculator can perform multiple arithmetic operations.  
Your function should allow the user to choose which operation is expected, enter in the values to perform 
the operation on, and ultimately view the result.
- You should make git commits as you finish each phase, so you can see the history

###Specification:
- A user should be given a menu of operations
- A user should be able to choose from the menu
- A user should be able to enter numbers to perform the operation on
- A user should be shown the result
- This process should continue until the user selects a quit option from the menu

#####Commit 1
- Calculator functionality
  - Calculator should be able to do basic arithmetic (+,-, *, /)

#####Commit 2
- Advanced Calculator functionality
  - Calculator should be able to do basic arithmetic (exponents, square roots)

#####Commit 3
- User should be given a menu of Calculator functionality
- User should be able to choose intended functionality
- After each operation, the user should be returned to the menu until they quit

#####Commit 4 (Bonus)
- Add functionality for trigonometric functions (sin, cos, tan)
- Add functionality to include a factorial option => e
	
=end

#basic methods – adding, subtracting, multiplying dividing

def add(number_1, number_2)
	puts "The sum of your numbers is: #{number_1 + number_2}\n\n"
	return number_1 + number_2
end

def subtract(number_1, number_2)
	puts "The difference of your numbers is: #{number_1 - number_2}\n\n"
	return number_1 - number_2
end

def multiply(number_1, number_2)
	puts "The product of your numbers is: #{number_1 * number_2}\n\n"
	return number_1 * number_2
end

def divide(x, y)
	puts "The quotient of your numbers is: #{x / y}\n\n"
	return x / y
end

#advanced methods – square, divisors, exponents, square root

def square(number1)
	puts "Your number squared is: #{number1 ** 2}\n\n"
	return number1 ** 2
end

def divisors(number)
	divisor = 0
	array_of_divisors = []
	while divisor < number
		divisor = divisor + 1
	if number % divisor == 0
	array_of_divisors.push(divisor)	
	end
end
	puts "#{number}'s divisors are #{array_of_divisors}\n\n"
	return array_of_divisors
end

def exponents(number_1, number_2)
	puts "Your number to the #{number_2} power is #{number_1 ** number_2}\n\n"
	return number_1 ** number_2
end

def squareroot(number)
	sqroot = Math.sqrt(number).to_i
	puts "The square root of #{number} is #{sqroot}!\n\n"
	return sqroot
end

# Welcoming the user, and collecting his/her choice
puts "Welcome to the calculator! Please select an option from the menu below."
def menu()
puts "**CALCULATOR MENU** \n 
[B] – Select 'B' for the most basic calculator functions (+, -, *, /) \n 
[A] – Select 'A' for the more advanced calculator functions (exponents, square roots, etc.) \n 
[Q] – Select 'Q' to quit the calculator \n"
end
menu 

user_choice = gets.chomp.upcase!

while user_choice != "Q"
if user_choice == "B" 
	# basic functions!
	puts "Welcome to the Basic calculator options! Please select an operation you'd like the calculator to perform:"
	def basic_menu
	puts "**BASIC MENU** \n 
	[ADD] – adds two numbers together \n 
	[SUBTRACT] - subtracts one number from another \n
	[MULTIPLY] – multiples two numbers together \n 
	[DIVIDE] – divides two numbers together \n
	[HOME] – return to main menu \n"
	end
	basic_menu
	basic_choice = gets.chomp.upcase!

	if basic_choice == "ADD"
		puts "What is the first number you'd like to add?"
		number_1 = gets.chomp.to_i
		puts "What would you like to add to #{number_1}?"
		number_2 = gets.chomp.to_i
		add(number_1, number_2)
	elsif basic_choice == "SUBTRACT"
		puts "What is the number you'd like to subtract from?"
		number_1 = gets.chomp.to_i
		puts "What is the number you'd like to subtract from #{number_1}?"
		number_2 = gets.chomp.to_i
		subtract(number_1, number_2)
	elsif basic_choice == "MULTIPLY"
		puts "What is the first number you'd like to multiply?"
		number_1 = gets.chomp.to_i
		puts "What is the second number you'd like to multiply?"
		number_2 = gets.chomp.to_i
		multiply(number_1, number_2)
	elsif basic_choice == "DIVIDE"
		puts "What is the number you'd like to divide?"
		x = gets.chomp.to_i
		puts "What would you like to divide it by?"
		y = gets.chomp.to_i
		divide(x, y)
	elsif basic_choice == "HOME"
		menu 
		user_choice = gets.chomp.upcase!
	else
		puts "Oops! You didn't select a valid option. Please enter the operation you'd like the calculator to perform from the menu below:"
	end

elsif user_choice == "A"
	# advanced functions!
	puts "Welcome to the Advanced caclulator options! Please select an operation you'd like the calculator to perform:"
	def advanced_menu
	puts "**ADVANCED MENU** \n 
	[SQUARE] – square a number \n 
	[EXPONENT] - raise a number of your choice to the power of your choice \n
	[SQUAREROOT] – get the square root of a number \n 
	[DIVISORS] – get all of a number's divisors \n
	[HOME] – return to main menu \n"
	end
	advanced_menu
	advanced_choice = gets.chomp.upcase!

	if advanced_choice == "SQUARE"
		puts "What number would you like to square?"
		number1 = gets.chomp.to_i
		square(number1)
	elsif advanced_choice == "EXPONENT"
		puts "What number would you like to raise to the power of your choice?"
		number_1 = gets.chomp.to_i
		puts "What power would you like to raise that to?"
		number_2 = gets.chomp.to_i
		exponents(number_1,number_2)
	elsif advanced_choice == "SQUAREROOT"
		puts "What number would you like the square root of?"
		number = gets.chomp.to_i
		squareroot(number)
	elsif advanced_choice == "DIVISORS"
		puts "What number would you like the divisors of?"
		number = gets.chomp.to_i
		divisors(number)
	elsif advanced_choice == "HOME"
		menu 
		user_choice = gets.chomp.upcase!
	else
		puts "Oops! You didn't select a valid option. Please enter the operation you'd like the calculator to perform from the menu below:"
	end
else
	puts "Please enter a valid option from our menu."
	menu 
	user_choice = gets.chomp.upcase!
end

end


