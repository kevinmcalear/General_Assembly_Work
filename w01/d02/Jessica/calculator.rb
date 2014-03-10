puts "Select an option (Type 1, 2, or 3): (1) Basic, (2) Advanced, (3) Trig, (4) Quit"
option = gets.chomp.to_i

# performs a basic operation on two numbers
def basic_operation(a, b, type)
  case type
  when 1
    puts "Answer: #{a + b}"
  when 2
    puts "Answer: #{a - b}"
  when 3
    puts "Answer: #{a * b}"
  when 4
    puts "Answer: #{a / b}"
  end
end

def advanced_operation(a, b, type)
  case type
  when 1
    puts "Answer: #{Math.sqrt(a)}"
  when 2
    puts "Answer: #{a ** b}"
  end
end

def trig_operation(a, type)
  case type
  when 1 
    puts "Answer: #{Math.sin(a)}"
  when 2 
    puts "Answer: #{Math.cos(a)}"
  # when 
  #   puts "Answer: #{Math.tan(a)}"
  end
end

  
def prompt   
  puts "Select an option (Type 1, 2, or 3): (1) Basic, (2) Advanced, (3) Trig, (4)Quit"
  option = gets.chomp.to_i
end


while option != 4

  prompt

  if option == 1
    puts "Select: (1) Addition, (2) Subtraction, (3) Multiplication, (4) Division, (5) Menu"
    operation = gets.chomp.to_i

    puts "First number:"
    first_number = gets.chomp.to_i
    puts "Second number:"
    second_number = gets.chomp.to_i

    basic_operation(first_number, second_number, operation)


    elsif option == 2
      puts "Select: (1) Square Root, (2) Exponents" 
      advanced = gets.chomp.to_i

      puts "First number:"
      first_number = gets.chomp.to_i
      puts "Second number:"
      second_number = gets.chomp.to_i
       
      advanced_operation(first_number, second_number, advanced)

    

      elsif option == 3
        puts "Select: (1) Sine, (2) Cosine, (3) Tangent" 
        puts "First number:"
        first_number = gets.chomp.to_i
        trig = gets.chomp.to_i
        trig_operation(first_number, trig)
       

      else
        exit
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


  