# Calculator Program by Nicholas Bundy

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
  return num1/num2
end

def exp(num1, num2 = 2)
  return num1 ** num2
end

def sqrt(number)
  Math.sqrt(number)
end

puts "Would you like to open Nick's Calculator?"
puts "(yes or quit)"
continue = gets.chomp
while continue != "quit"

puts "--- Calculator Menu Options ---"
puts "Add     Subtract       Multiply"
puts "Divide  Exponent    Square Root"
puts "         Quit                  "
puts "-------------------------------"
puts "What would you like to do?"
puts "Please choose from the list above:"
op = gets.chomp.downcase
  if op != "square root"
    puts "Enter the first number:"
    num1 = gets.chomp.to_i
    puts "Enter the second number:"
    num2 = gets.chomp.to_i
  else
    puts "Enter the number to find the square root:"
    number = gets.chomp.to_i
  end
  
case op
when "add"
  puts add(num1, num2)
when "subtract"
  puts subtract(num1, num2)
when "multiply"
  puts multiply(num1, num2)
when "divide"
  puts divide(num1, num2)
when "exponent"
  puts exp(num1, num2)
when "square root"
  puts sqrt(number)
end

puts "Again?"
puts "(type quit to end the program)"
print ">"
continue = gets.chomp
end




