def first_input
  puts "Please enter the first number:"
  return gets.chomp.to_i
end

def second_input
  puts "Please enter the second number:"
  return gets.chomp.to_i
end

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
  end
end


menu_selection = "a"
while menu_selection != "q"
  puts "Welcome to Calculator By John. Please enter an option:"
  puts "{a} Arithmetic +, -, *, /"
  puts "{b} Beyond Arithmetic +, -, *, /, exponents, sqrt" 
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



  

