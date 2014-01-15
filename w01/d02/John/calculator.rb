def add
  puts "Please enter the first number:"
  num1 = gets.chomp.to_i  
  puts "Please enter the second number:"
  num2 = gets.chomp.to_i
  puts
  puts "#{num1} + #{num2} = #{num1 + num2}"
end

def subtract
  puts "Please enter the first number:"
  num1 = gets.chomp.to_i  
  puts "Please enter the second number:"
  num2 = gets.chomp.to_i
  puts
  puts "#{num1} - #{num2} = #{num1 - num2}"
end

def multiply
  puts "Please enter the first number:"
  num1 = gets.chomp.to_i  
  puts "Please enter the second number:"
  num2 = gets.chomp.to_i
  puts
  puts "#{num1} * #{num2} = #{num1 * num2}"
end

def divide
  puts "Please enter the first number:"
  num1 = gets.chomp.to_i  
  puts "Please enter the second number:"
  num2 = gets.chomp.to_i
  puts
  puts "#{num1} / #{num2} = #{num1.to_f / num2.to_f}"
end

def exponent
  puts "Please enter a number:"
  num = gets.chomp.to_i  
  puts "Please enter an exponent:"
  exp = gets.chomp.to_i
  puts
  puts "#{num}^#{exp} = #{num ** exp}"
end

def square_root
  puts "Please enter a number:"
  num = gets.chomp.to_i  
  puts
  puts "The square root of #{num} is #{num ** 0.5}"
end

def sin
  puts "Please enter the angle in degrees:"
  angle = gets.chomp.to_i
  puts
  puts "The sine of #{angle} degrees is #{Math.sin(Math::PI * angle / 180)}"
end

def cos
  puts "Please enter the angle in degrees:"
  angle = gets.chomp.to_i
  puts
  puts "The cosine of #{angle} degrees is #{Math.cos(Math::PI * angle / 180)}"
end

def tan
  puts "Please enter the angle in degrees:"
  angle = gets.chomp.to_i
  puts
  puts "The tangent of #{angle} degrees is #{Math.tan(Math::PI * angle / 180)}"
end

def factorial
  puts "Please enter a number greater than zero:"
  num = gets.chomp.to_i
  puts

  product = 1
  i = num
  while i > 0
    product  = product * i
    i -= 1
  end

  puts "#{num} factorial is #{product}"
end

def calculator_basic
  puts "What operation would you like to perform?"
  puts "{a} Addition"
  puts "{s} Subtraction"
  puts "{m} Multiplication"
  puts "{d} Division"
  operation = gets.chomp.downcase
  puts

  case operation
  when "a"
    add
  when "s"
    subtract
  when "m"
    multiply
  when "d"
    divide
  end
end

def calculator_advanced
  puts "What operation would you like to perform?"
  puts "{a} Addition"
  puts "{s} Subtraction"
  puts "{m} Multiplication"
  puts "{d} Division"
  puts "{e} Exponents"
  puts "{r} Square Roots"
  puts "{si} Sine"
  puts "{c} Cosine"
  puts "{t} Tangent"
  puts "{f} Factorial"
  operation = gets.chomp.downcase
  puts

  case operation
  when "a"
    add
  when "s"
    subtract
  when "m"
    multiply
  when "d"
    divide
  when "e"
    exponent
  when "r"
    square_root
  when "si"
    sin
  when "c"
    cos
  when "t"
    tan
  when "f"
    factorial
  end
end


menu_selection = "a"
while menu_selection != "q"
  puts "Welcome to Calculator By John. Please enter an option:"
  puts "{a} Arithmetic +, -, *, /"
  puts "{b} Beyond Arithmetic +, -, *, /, exponents, sqrt, trig, factorial" 
  puts "{q} Quit"
  menu_selection = gets.chomp.downcase
  puts

  if menu_selection == "a" 
    calculator_basic
    puts
  end

  if menu_selection == "b"
    calculator_advanced
    puts
  end

end



  

