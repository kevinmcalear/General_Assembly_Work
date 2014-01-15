# Defining functions
def add(x, y)
  puts "#{x + y}"
end
def subtract(x, y)
  puts "#{x - y}"
end
def multiply(x, y)
  puts "#{x * y}"
end
def divide(x, y)
  puts "#{x / y}"
end
def exponent(x, y)
  puts "#{x ** y}"
end
def square_root(x)
  puts "#{Math.sqrt(x)}"
end
def factorial(x)
  counter = x-1
  while counter > 1
    x = x * counter
    counter -= 1
  end
  a = x
  puts "#{a}"
end
def sin(x)
  puts "#{Math.sin(x)}"
end
def cos(x)
  puts "#{Math.cos(x)}"
end
def tan(x)
  puts "#{Math.tan(x)}"
end
def asks
  puts "What type of calculator do you need?"
  puts "basic, advanced, trig, or none?"
end

#Start calculator!
asks
choice = gets.chomp

  if choice == "none"
    puts "Goodbye!"
  end

while choice != "none"

  if choice == "basic"
    puts "What would you like to do?"
    puts "add, subtract, multiply, divide"
    function = gets.chomp

    case function
    when "add"
      puts "first number?"
      first_a = gets.chomp.to_i
      puts "second number?"
      second_a = gets.chomp.to_i
      add(first_a, second_a)
    when "subtract"
      puts "first number?"
      first_s = gets.chomp.to_i
      puts "second number?"
      second_s = gets.chomp.to_i
      subtract(first_s, second_s)
    when "multiply"
      puts "first number?"
      first_m = gets.chomp.to_i
      puts "second number?"
      second_m = gets.chomp.to_i
      multiply(first_m, second_m)
    when "divide"
      puts "first number?"
      first_d = gets.chomp.to_i
      puts "second number?"
      second_d = gets.chomp.to_i
      divide(first_d, second_d)
    else
      puts "I didn't understand that"
    end

  asks
  choice = gets.chomp

  if choice == "advanced"
    puts "What would you like to do?"
    puts "exponent, square root, factorial"
    function = gets.chomp

    if function == "exponent"
      puts "base number?"
      base = gets.chomp.to_i
      puts "exponent?"
      power = gets.chomp.to_i
      exponent(base, power)
    elsif function == "square root"
      puts "number?"
      number = gets.chomp.to_i
      square_root(number)
    elsif function == "factorial"
      puts "number?"
      number = gets.chomp.to_i
      factorial(number)
    else
      puts "I didn't understand that"
    end
    
   asks
   choice = gets.chomp

  if choice == "trig"
    puts "What would you like to do?"
    puts "sin, cos, tan"
    function = gets.chomp

      if function == "sin"
        puts "value?"
        number = gets.chomp.to_i
        sin(number)
      elsif function == "cos"
        puts "value?"
        number = gets.chomp.to_i
        cos(number)
      elsif function == "tan"
        puts "value?"
        number = gets.chomp.to_i 
        tan(number)
      end 
    end

   asks
   choice = gets.chomp
 end
end
end
