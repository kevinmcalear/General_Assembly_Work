
# Defining functions
def add(first, second)
  puts "#{first + second}"
end
def subtract(first, second)
  puts "#{first - second}"
end
def multiply(first, second)
  puts "#{first * second}"
end
def divide(first, second)
  puts "#{first / second}"
end
def exponent(first, second)
  puts "#{first ** second}"
 end
def square_root(number)
  puts "#{Math.sqrt(number)}"
end

#Start calculator!
puts "What type of calculator do you need?"
puts "basic, advanced, or none?"
choice = gets.chomp

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

     puts "What type of calculator do you need?"
    puts "basic, advanced, or none?"
    choice = gets.chomp
  end

  if choice == "advanced"
    puts "What would you like to do?"
    puts "exponent, square root"
    function = gets.chomp

    if function == "exponent"
      puts "base number?"
      base = gets.chomp.to_i
      puts "exponent?"
      power = gets.chomp. to_i
      exponent(base, power)
    elsif function == "square root"
      puts "number?"
      number = gets.chomp.to_i
      square_root(number)
    else
      puts "I didn't understand that"
    end

    puts "What type of calculator do you need?"
    puts "basic, advanced, or none?"
    choice = gets.chomp

  end
end

def add(first, second)
  return first + second
end



