
#simple calculator
puts "Pick an operation: add(a) subtract(s) multiply(*) divide(d)"
 operator = gets.chomp
puts "First number?"
 num1 = gets.chomp.to_i
puts "Second number?"
 num2 = gets.chomp.to_i

case operator
when "a"
	answer = num1 + num2
when "s"
	answer = num1 - num2
when "m"
	answer = num1 * num2
when "d"
	answer = num1 / num2
end
puts answer
