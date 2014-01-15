# #Calculator

# ###Objectives:
# - Practice with functions, loops, conditions, user-input, switch/case

# ###Prompt
# - You will be building a calculator.  A calculator can perform multiple arithmetic operations.  Your function should allow the user to choose which operation is expected, enter in the values to perform the operation on, and ultimately view the result.
# - You should make git commits as you finish each phase, so you can see the history

# ###Specification:
# - A user should be given a menu of operations
# - A user should be able to choose from the menu
# - A user should be able to enter numbers to perform the operation on
# - A user should be shown the result
# - This process should continue until the user selects a quit option from the menu

# #####Commit 1
# - Calculator functionality
#   - Calculator should be able to do basic arithmetic (+,-, *, /)

# #####Commit 2
# - Advanced Calculator functionality
#   - Calculator should be able to do basic arithmetic (exponents, square roots)

# #####Commit 3
# - User should be given a menu of Calculator functionality
# - User should be able to choose intended functionality
# - After each operation, the user should be returned to the menu until they quit

# #####Commit 4 (Bonus)
# - Add functionality for trigonometric functions (sin, cos, tan)
# - Add functionality to include a factorial option

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
          advanced = gets.chomp.to_i
        when 2
            puts "First number:"
            num1 = gets.chomp.to_i
            puts "Raised to:"
            num2 = gets.chomp.to_i
            puts "Answer: #{num1 ** num2}"
            puts "Select an option (Type 1, 2, or 3): (1) Basic, (2) Advanced, (3) Trig, (4)Quit"
            advanced = gets.chomp.to_i
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
            trig = gets.chomp.to_i  
          when 2
            puts "Number:"
            num1 = gets.chomp.to_i
            puts "Answer: #{Math.cos(num1)}"
            puts "Select an option (Type 1, 2, or 3): (1) Basic, (2) Advanced, (3) Trig, (4)Quit"
            trig = gets.chomp.to_i
          when 3
            puts "Number:"
            num1 = gets.chomp.to_i
            puts "Answer: #{Math.tan(num1)}"
            puts "Select an option (Type 1, 2, or 3): (1) Basic, (2) Advanced, (3) Trig, (4)Quit"
            trig = gets.chomp.to_i  
          else
            puts "Select an option (Type 1, 2, or 3): (1) Basic, (2) Advanced, (3) Trig, (4)Quit"
            option = gets.chomp.to_i
          end
      end

      if option == 4
        exit
      end
end

#     if option == 3
#     puts "Select: (1) Sin, (2) Cos" 
#     trig = gets.chomp.to_i
#         if trig == 1
#           puts "Number:"
#           num1 = gets.chomp.to_i
#           puts "Answer: #{Math.sqrt(num1)}"
#           puts "Select an option (Type 1, 2, or 3): (1) Basic, (2) Advanced, (3) Trig, (4)Quit"
#           trig = gets.chomp.to_i  
#         if trig == 2
#           puts "Number:"
#           num1 = gets.chomp.to_i
#           puts "Answer: #{Math.sqrt(num1)}"
#           puts "Select an option (Type 1, 2, or 3): (1) Basic, (2) Advanced, (3) Trig, (4)Quit"
#           trig = gets.chomp.to_i  
#         else
#           puts "Select an option (Type 1, 2, or 3): (1) Basic, (2) Advanced, (3) Trig, (4)Quit"
#           option = gets.chomp.to_i
#         end
#       end
#     end













# #   puts "Select: (1) Addition, (2) Subtraction, (3) Multiplication, (4) Division"
# #   basic = gets.chomp.to_i
# #   puts menu
# #   option = gets.chomp.to_i
# # end

# elsif option == 2 
#   puts "Select: (1) Square Root, (2) Exponents"
#   advanced = gets.chomp.to_i
# elsif option == 3
#   puts "Select: (1) Sin, (2) Cos"
#   trig = gets.chomp.to_i
# else
#   exit
# end
# end

# if basic == 1
#   puts "First number:"
#   num1 = gets.chomp.to_i
#   puts "Second number:"
#   num2 = gets.chomp.to_i
#   puts "Answer: #{num1 + num2}"


# elsif basic == 2
#     puts "First number:"
#   num1 = gets.chomp.to_i
#   puts "Second number:"
#   num2 = gets.chomp.to_i
#   puts "Answer: #{num1 * num2}"
# elsif basic == 3
#    puts "First number:"
#   num1 = gets.chomp.to_i
#   puts "Second number:"
#   num2 = gets.chomp.to_i
#   puts "Answer: #{num1 * num2}"
#   elsif basic == 4
# else
#   return menu
# end

# def addition(num1, num2)
#   puts "First number:"
#   num1 = gets.chomp.to_i
#   puts "Second number:"
#   num2 = gets.chomp.to_i
#   puts "Answer: #{num1 + num2}"
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


  