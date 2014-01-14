def first_input
    puts "Please enter the first number:"
    return gets.chomp.to_i
  end

  def second_input
    puts "Please enter the second number:"
    return gets.chomp.to_i
  end

selection = "a"
while selection != "q"
  puts "Welcome to Calculator By John. Please enter an option:"
  puts "{a} Arithmetic +, -, *, /"
  puts "{b} Beyond Arithmetic +, -, *, /, exponent, sqrt" 
  puts "{q} Quit"
  selection = gets.chomp
  puts

  if selection == "a"
    puts "What operation would you like to perform?"
    puts "{a} Addition"
    puts "{s} Subtraction"
    puts "{m} Multiplication"
    puts "{d} Division"
    operation = gets.chomp
    puts

    first = first_input
    second = second_input
    puts
    
    case operation
    when "a"
      puts "#{first} + #{second} = #{first + second}"
    when "s"
      puts "#{first} - #{second} = #{first - second}"
    when "m"
      puts "#{first} * #{second} = #{first * second}"
    when "d"
      puts "#{first} / #{second} = #{(first.to_f / second.to_f)}"
    end
    puts
  end

end

  

