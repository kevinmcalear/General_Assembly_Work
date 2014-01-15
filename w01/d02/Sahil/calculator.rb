pick = "c"
while (pick != "q")
	puts "Choose a Calculator: basic(b) advanced(a) quit(q)"
	pick = gets.chomp

if pick == "b"
puts "Pick an operation: add(a) subtract(s) multiply(m) divide(d)"
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

elsif pick == "a"
puts "Pick an operation: exponent(e), square root(r)"
 operator = gets.chomp
puts "Base number?"
 num1 = gets.chomp.to_i

if operator == "e"
	puts "To what power?"
 	num2 = gets.chomp.to_i
	answer = num1 ** num2
elsif operator == "r"
	answer = Math.sqrt(num1)
end
puts answer
end
end