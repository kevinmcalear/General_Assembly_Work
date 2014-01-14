def first_input
  puts "Please enter the first number:"
  return gets.chomp.to_i
end

def second_input
  puts "Please enter the second number:"
  return gets.chomp.to_i
end

def add(num1, num2)
  puts "#{num1} + #{num2} = #{num1 + num2}"
end

def subtract(num1, num2)
  puts "#{num1} - #{num2} = #{num1 - num2}"
end

def multiply(num1, num2)
  puts "#{num1} * #{num2} = #{num1 * num2}"
end

def divide(num1, num2)
  puts "#{num1} / #{num2} = #{num1.to_f / num2.to_f}"
end

def exponent(num, exp)
  puts "#{num}^#{exp} = #{num ** exp}"
end

def square_root(num)
  puts "The square root of #{num} is #{num ** 0.5}"
end

def menu_basic
  puts "{a} Addition"
  puts "{s} Subtraction"
  puts "{m} Multiplication"
  puts "{d} Division"
end

def menu_advanced
  puts "{e} Exponents"
  puts "{r} Square Roots"
end


menu_selection = "a"
while menu_selection != "q"
  puts "Welcome to Calculator By John. Please enter an option:"
  puts "{a} Arithmetic +, -, *, /"
  puts "{b} Beyond Arithmetic +, -, *, /, exponents, sqrt" 
  puts "{q} Quit"
  menu_selection = gets.chomp.downcase
  puts

  if menu_selection == "a" || menu_selection == "b"
    puts "What operation would you like to perform?"
    menu_basic
    menu_advanced if menu_selection == "b"
    operation = gets.chomp.downcase
    puts
  end

  if operation == "a" || operation == "s" || operation == "m" || operation == "d"
    puts "Please enter the first number:"
    number1 = gets.chomp.to_i
    
    puts "Please enter the second number:"
    number2 = gets.chomp.to_i
    puts

  elsif operation == "e" && menu_selection != "a"
    puts "Please enter a number:"
    number = gets.chomp.to_i
    
    puts "Please enter an exponent:"
    exponent = gets.chomp.to_f
    puts

  elsif operation == "r" && menu_selection != "a"
    puts "Please enter a number:"
    number = gets.chomp.to_i
  end
  
  case operation
  when "a"
    add(number1, number2)
  when "s"
    subtract(number1, number2)
  when "m"
    multiply(number1, number2)
  when "d"
    divide(number1, number2)
  when "e"
    exponent(number, exponent)
  when "r"
    square_root(number)
  end
  puts

end



  

