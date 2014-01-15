def add(num1, num2)
  return num1 + num2
end

def subtract(num1, num2)
  return num1 - num2
end

def multiply(num1, num2)
  return num1 * num2
end

def divide(num1, num2)
  return num1 / num2
end

def exponent(num1, num2)
  return num1 ** num2
end

def square(num1)
  return Math.sqrt(num1)
end

def sine(num1)
  return Math.sin(num1)
end

def cosine(num1)
  return Math.cos(num1)
end

def tangent(num1)
  return Math.tan(num1)
end

def factorial(num1)
  return 1 if num1 == 0
  result = num1
  idx = num1 - 1
  while idx > 0
    result  = result * idx
    idx -= 1
  end
  return result
end

choice  = 0
result = 0
while choice != 11


puts "Choose your operation"
puts "1 Addition"
puts "2 Subtraction"
puts "3 Multiplication"
puts "4 Division"
puts "5 Exponential"
puts "6 Square root"
puts "7 Sine"
puts "8 Cosine"
puts "9 Tangent"
puts "10 Factorial"
puts "11 Quit"
choice = gets.chomp.to_i

if choice == 1
  puts "Addition: enter the first number"
  first_num = gets.chomp.to_f
  puts "Enter the second number"
  second_num = gets.chomp.to_f
  result = add(first_num, second_num)
elsif choice == 2
  puts "Subtraction: enter the first number"
  first_num = gets.chomp.to_f
  puts "Enter the second number"
  second_num = gets.chomp.to_f
  result = subtract(first_num, second_num)
elsif choice == 3
  puts "Multiplication: enter the first number"
  first_num = gets.chomp.to_f
  puts "Enter the second number"
  second_num = gets.chomp.to_f
  result = multiply(first_num, second_num)
elsif choice == 4
  puts "Division: enter the first number"
  first_num = gets.chomp.to_f
  puts "Divide by:"
  second_num = gets.chomp.to_f
  result = divide(first_num, second_num)
  elsif choice == 5
  puts "Exponential: enter the first number"
  first_num = gets.chomp.to_f
  puts "Enter exponent"
  second_num = gets.chomp.to_f
  result = exponent(first_num, second_num)
elsif choice == 6
  puts "Square root: enter your number"
  first_num = gets.chomp.to_f
  result = square(first_num)
elsif choice == 7
  puts "Sine: enter your number"
  first_num = gets.chomp.to_f
  result = sine(first_num)
elsif choice == 8
  puts "Cosine: enter your number"
  first_num = gets.chomp.to_f
  result = cosine(first_num)
elsif choice == 9
  puts "Tangent: enter your number"
  first_num = gets.chomp.to_f
  result = tangent(first_num)
elsif choice == 10
  puts "Factorial: enter your number"
  first_num = gets.chomp.to_i
  result = factorial(first_num)
elsif choice == 11
  puts "Goodbye"
  result = 0
end

puts result 



end
