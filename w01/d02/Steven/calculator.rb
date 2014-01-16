# puts "It's Calculator Time! What would you like to do? "
# puts "Basic Advanced Quit"
# answer = gets.chomp

# while answer = Basic
#   puts "Addition Subtraction Multiplication Division?"
#   basic_answer = gets.chomp

# end

choice = nil
while choice != "Quit"
  puts "What would you like to do?"
  puts "Basic Advanced Quit"
  choice = gets.chomp

  if choice == "Basic"
    puts "Addition Subtraction Multiplication Division?"
    basic_choice = gets.chomp

    case basic_choice
    when "Addition"
      puts "What is your first number?"
      add_1 = gets.chomp.to_i
      puts "What number would you like to add this to?"
      add_2 = gets.chomp.to_i
      puts " #{add_1} + #{add_2} = #{add_1 + add_2}"
    when "Subtraction"
      puts "What is your first number?"
      subtract_1 = gets.chomp.to_i
      puts "What would you like to subtract from #{subtract_1} ?"
      subtract_2 = gets.chomp.to_i
      puts " #{subtract_1} - #{subtract_2} = #{subtract_1 - subtract_2}"
    when "Multiplication"
      puts "What is your first number?"
      multiply_1 = gets.chomp.to_i
      puts "What would you like to multiply #{multiply_1} by?"
      multiply_2 = gets.chomp.to_i
      puts "#{multiply_1} * #{multiply_2} = #{multiply_1 * multiply_2}"
    when "Division"
      puts "What is your first number?"
      division_1 = gets.chomp.to_i
      puts "What number would you like to divide #{division_1} by?"
      division_2 = gets.chomp.to_i
      puts "#{division_1} / #{division_2} = #{division_1 / division_2}"
    end

    puts "Great! What would you like to do now?"
    puts "Basic Advanced Quit?"
    choice = gets.chomp
  end

  if choice == "Advanced"
    puts "Exponent Square Root?"
    advanced_choice = gets.chomp

    case advanced_choice
    when "Exponent"
      def exponent(x, y)
        return x ** y
      end
      puts "What is your first number?"
      a = gets.chomp.to_i
      puts "#{a} to what power?"
      b = gets.chomp.to_i
      ans = exponent(a, b)
      puts "#{a} to the power of #{b}  = #{ans}  "  
    when "Square Root"  
#a ** b
      puts "What number do you want the square root of?"
      a = gets.chomp.to_i
      ans = Math.sqrt(a)
      puts "The square root of #{a} is #{ans.to_i}"
    end
    puts "Great! What would you like to do now?"
    # puts "Basic Advanced Quit?"
    # choice = gets.chomp

  end


end






