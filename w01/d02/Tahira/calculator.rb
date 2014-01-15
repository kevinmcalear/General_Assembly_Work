def Basic(type, num1, num2)
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
  end
end


puts "**CALCULATOR**"
operation_type = "A"
while (operation_type.upcase != "Q")
  puts "What type of operation would you like to perform?"
  puts "Basic (B), Advanced (A), Trigonometric (T), or Quit (Q)"

  operation_type = gets.chomp.upcase

  case operation_type

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
      puts Basic(basic_type, n1, n2)

  when "A"
    puts "What operation would you like to do? Exponent (EX), Root (RT):"
      advanced_type = gets.chomp.upcase
    while !(advanced_type == "EX" || advanced_type =="RT")
      puts "Please enter a valid operation. Exponent (EX), Square root (RT):"
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
      puts Basic(advanced_type, n1, n2)
  end
end

  

