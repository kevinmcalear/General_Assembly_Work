puts "Select an option (Type 1, 2, or 3): (1) Basic, (2) Advanced, (3) Trig, (4) Quit"
  option = gets.chomp.to_i

while option != 4
  if option == 1
    puts "Select: (1) Addition, (2) Subtraction, (3) Multiplication, (4) Division, (5) Menu"
    basic = gets.chomp.to_i
        case basic 
        when 1
          puts "First number:"
          num1 = gets.chomp.to_i
          puts "Second number:"
          num2 = gets.chomp.to_i
          puts "Answer: #{num1 + num2}"
          puts "Select an option (Type 1, 2, or 3): (1) Basic, (2) Advanced, (3) Trig, (4)Quit"
          option = gets.chomp.to_i
       when 2
          puts "First number:"
          num1 = gets.chomp.to_i
          puts "Second number:"
          num2 = gets.chomp.to_i
          puts "Answer: #{num1 - num2}"
          puts "Select an option (Type 1, 2, or 3): (1) Basic, (2) Advanced, (3) Trig, (4)Quit"
          option = gets.chomp.to_i
        when 3
          puts "First number:"
          num1 = gets.chomp.to_i
          puts "Second number:"
          num2 = gets.chomp.to_i
          puts "Answer: #{num1 * num2}"
          puts "Select an option (Type 1, 2, or 3): (1) Basic, (2) Advanced, (3) Trig, (4)Quit"
          option = gets.chomp.to_i
       when 4
          puts "First number:"
          num1 = gets.chomp.to_i
          puts "Second number:"
          num2 = gets.chomp.to_i
          puts "Answer: #{num1 / num2}"
          puts "Select an option (Type 1, 2, or 3): (1) Basic, (2) Advanced, (3) Trig, (4)Quit"
          option = gets.chomp.to_i
        else
          puts "Select an option (Type 1, 2, or 3): (1) Basic, (2) Advanced, (3) Trig, (4)Quit"
          option = gets.chomp.to_i
        end
    end

    if option == 2
      puts "Select: (1) Square Root, (2) Exponents" 
      advanced = gets.chomp.to_i
       case advanced
       when 1
          puts "Number:"
          num1 = gets.chomp.to_i
          puts "Answer: #{Math.sqrt(num1)}"
          puts "Select an option (Type 1, 2, or 3): (1) Basic, (2) Advanced, (3) Trig, (4)Quit"
          option = gets.chomp.to_i
        when 2
          puts "First number:"
          num1 = gets.chomp.to_i
          puts "Raised to:"
          num2 = gets.chomp.to_i
          puts "Answer: #{num1 ** num2}"
          puts "Select an option (Type 1, 2, or 3): (1) Basic, (2) Advanced, (3) Trig, (4)Quit"
          option = gets.chomp.to_i
        else
          puts "Select an option (Type 1, 2, or 3): (1) Basic, (2) Advanced, (3) Trig, (4)Quit"
          option = gets.chomp.to_i
        end
    end

      if option == 3
        puts "Select: (1) Sine, (2) Cosine, (3) Tangent" 
        trig = gets.chomp.to_i
         case trig
         when 1
            puts "Number:"
            num1 = gets.chomp.to_i
            puts "Answer: #{Math.sin(num1)}"
            puts "Select an option (Type 1, 2, or 3): (1) Basic, (2) Advanced, (3) Trig, (4)Quit"
            option = gets.chomp.to_i  
          when 2
            puts "Number:"
            num1 = gets.chomp.to_i
            puts "Answer: #{Math.cos(num1)}"
            puts "Select an option (Type 1, 2, or 3): (1) Basic, (2) Advanced, (3) Trig, (4)Quit"
            option = gets.chomp.to_i
          when 3
            puts "Number:"
            num1 = gets.chomp.to_i
            puts "Answer: #{Math.tan(num1)}"
            puts "Select an option (Type 1, 2, or 3): (1) Basic, (2) Advanced, (3) Trig, (4)Quit"
            option = gets.chomp.to_i  
          else
            puts "Select an option (Type 1, 2, or 3): (1) Basic, (2) Advanced, (3) Trig, (4)Quit"
            option = gets.chomp.to_i
          end
      end
    end
        
        exit
      

# def addition(num1, num2)
#   puts "First number:"
#   num1 = gets.chomp.to_i
#   puts "Second number:"
#   num2 = gets.chomp.to_i
#   puts "Answer: #{num1 + num2}"
#   puts "Select an option (Type 1, 2, or 3): (1) Basic, (2) Advanced, (3) Trig, (4)Quit"
#   option = gets.chomp.to_i
# end

# def multiplication(num1, num2)
#   puts "First number:"
#   num1 = gets.chomp.to_i
#   puts "Second number:"
#   num2 = gets.chomp.to_i
#   puts "Answer: #{num1 * num2}"
# end

# def subtraction(num1, num2)
#   puts "First number:"
#   num1 = gets.chomp.to_i
#   puts "Second number:"
#   num2 = gets.chomp.to_i
#   puts "Answer: #{num1 - num2}"
# end

# def division(num1, num2)
#   puts "First number:"
#   num1 = gets.chomp.to_i
#   puts "Second number:"
#   num2 = gets.chomp.to_i
#   puts "Answer: #{num1 / num2}"
# end


  