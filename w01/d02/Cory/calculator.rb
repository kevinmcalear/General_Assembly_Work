# #Calculator

# ###Objectives:
# - Practice with functions, loops, conditions, user-input, switch/case

# ###Prompt
# - You will be building a calculator.  A calculator can perform multiple arithmetic operations.  Your function should allow the user to choose which operation is expected, enter in the values to perform the operation on, and ultimately view the result.
# - You should make git commits as you finish each phase, so you can see the history

# ###Specification:
# - A user should be given a menu of operations
# - A user should be able to choose from the menu
# - A user should be able to enter numbers to perform the operation on
# - A user should be shown the result
# - This process should continue until the user selects a quit option from the menu

# #####Commit 1
# - Calculator functionality
#   - Calculator should be able to do basic arithmetic (+,-, *, /)

# #####Commit 2
# - Advanced Calculator functionality
#   - Calculator should be able to do basic arithmetic (exponents, square roots)

# #####Commit 3
# - User should be given a menu of Calculator functionality
# - User should be able to choose intended functionality
# - After each operation, the user should be returned to the menu until they quit

# #####Commit 4 (Bonus)
# - Add functionality for trigonometric functions (sin, cos, tan)
# - Add functionality to include a factorial option
choice = nil

while choice != "q"
puts "**************** Welcome to my awesome calculator *******************"
puts "Please enter a command: (b)asic, (a)dvanced, (t)rig or (q)uit"
choice = gets.chomp

if choice == "b"
  puts "select one of the following: (a)dd, (s)ub, (m)ultiply, (d)ivide"
  basic = gets.chomp
    if basic == "a"
      puts "Enter first number add:"
      num1 = gets.chomp.to_i
      puts "Enter second number to add:"
      num2 = gets.chomp.to_i
      puts num1 + num2
    elsif basic =="s"
      puts "Enter first number to subtract:"
      sub1 = gets.chomp.to_i
      puts "Enter second number to subtract:"
      sub2 = gets.chomp.to_i
      puts sub1 - sub2
    elsif basic == "m"
      puts "Enter first number to multiply:"
      mul1 = gets.chomp.to_i
      puts "Enter second number to multiply:"
      mul2 = gets.chomp.to_i
      puts mul1 * mul2
    elsif basic == "d"
      puts "Enter first number to divide:"
      div1 = gets.chomp.to_i
      puts "Enter second number to divide:"
      div2 = gets.chomp.to_i
      puts div1 / div2
    else
      puts "error"
    end
elsif choice == "a"
  puts "Select from one of the following: (e)xponents, (s)quare roots"
  adv = gets.chomp
    if adv == "e"
      puts "Enter first number:"
      exp1 = gets.chomp.to_i
      puts "Enter second number:"
      exp2 = gets.chomp.to_i
      puts exp1 ** exp2
    elsif adv == "s"
      puts "Enter a number to get the square root:"
      square = gets.chomp.to_i
      puts Math.sqrt(square)
    else
      puts "error"
    end
elsif choice == "t"
  puts "Select from one of the following: (s)in, (c)os or (t)an"
  trig = gets.chomp
    if trig == "s"
      puts "Enter a number to get the sin:"
      sin = gets.chomp.to_i
      puts Math.sin(sin)
    elsif trig == "c"
      puts "Enter a number to get the cos:"
      cos = gets.chomp.to_i
      puts Math.cos(cos)
    elsif trig == "t"
      puts "Enter a number to get the tan:"
      tan = gets.chomp.to_i
      puts Math.tan(tan)
    else
      puts "error"
  end

elsif choice == "q"
  puts "GOODBYE!!!!!!!!!"
end
end






