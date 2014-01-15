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
    puts "What would you like to do? Add (A), Subtract (S), Multiply (M), or Divide (D):"
      basic_type = gets.chomp.upcase
    while !(basic_type == "A" || basic_type =="S" || basic_type == "M" || basic_type == "D")
      puts "Please enter a valid operation. Add (A), Subtract (S), Multiply (M), or Divide (D):"
    end

    puts "Enter first number:"
    n1 = gets.chomp.to_i
    puts "Enter second number:"
    n2 = gets.chomp.to_i
    puts "The answer is:"
    puts Basic(basic_type, n1, n2)
  end
end

  

