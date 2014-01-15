#calculator method
def Calculator(type, num1, num2)
  case type
  when "A"
    return num1 + num2
  when "S"
    return num1 - num2
  when "M"
    return num1 * num2
  when "D"
    return num1 / num2
   when "EX" 
    return num1 ** num2
  when "RT"
    return num1 ** (1/num2)
  when "COS"
    return Math.cos(num1)
  when "SIN"
    return Math.sin(num1)
  when "TAN"
    return Math.tan(num1)
  when "F"
    x = num1
    factorial = num1
    while (x > 2)
      x=x-1
      factorial = factorial * x
    end
    return factorial
  end
end


puts "**CALCULATOR**"
operation_type = "A"
#Main menu loop
while (operation_type.upcase != "Q")
  puts "What type of operation would you like to perform?"
  puts "Basic (B), Advanced (A), Trigonometric (T), Factorial (F), or Quit (Q):"
  operation_type = gets.chomp.upcase
  while !(operation_type == "B" || operation_type == "A" || operation_type == "T" || operation_type == "F" || operation_type == "Q")
    puts "Please enter a valid operation type. Basic (B), Advanced (A), Trigonometric (T), Factorial (F), or Quit (Q):"
    operation_type = gets.chomp.upcase
  end

  case operation_type
#Basic calculator functions
  when "B"
    puts "What operation would you like to do? Add (A), Subtract (S), Multiply (M), or Divide (D):"
      basic_type = gets.chomp.upcase
    while !(basic_type == "A" || basic_type =="S" || basic_type == "M" || basic_type == "D")
      puts "Please enter a valid operation. Add (A), Subtract (S), Multiply (M), or Divide (D):"
      basic_type = gets.chomp.upcase    
    end
      puts "Enter first number:"
      n1 = gets.chomp.to_f
      puts "Enter second number:"
      n2 = gets.chomp.to_f
      puts "The answer is:"
      puts Calculator(basic_type, n1, n2)
#Advanced calculator functions
  when "A"
    puts "What operation would you like to do? Exponent (EX), Root (RT):"
      advanced_type = gets.chomp.upcase
    while !(advanced_type == "EX" || advanced_type == "RT")
      puts "Please enter a valid operation. Exponent (EX), Root (RT):"
      advanced_type = gets.chomp.upcase
    end
      puts "Enter number:"
      n1 = gets.chomp.to_f
      case advanced_type
      when "EX"
      puts "Enter power:"
      n2 = gets.chomp.to_f
      when "RT"
      puts "Enter root:"
      n2 = gets.chomp.to_f
      end
      puts "The answer is:"
      puts Calculator(advanced_type, n1, n2)
#Trig functions
  when "T"
    puts "What operation would you like to do? Sin (SIN), Cos (COS), Tan (TAN):"
        trig_type = gets.chomp.upcase
      while !(trig_type == "SIN" || trig_type =="COS" || trig_type == "TAN")
        puts "Please enter a valid operation. Sin (SIN), Cos (COS), Tan (TAN):"
        trig_type = gets.chomp.upcase
      end
      puts "Enter number:"
      n1 = gets.chomp.to_f
      puts "The answer is:"
      puts Calculator(trig_type, n1, 0)
#Factorial
  when "F"
    puts "What number do you want the factorial of?"
    n1 = gets.chomp.to_f
    puts "The answer is:"
    puts Calculator(operation_type, n1, 0)
  end
end

  

