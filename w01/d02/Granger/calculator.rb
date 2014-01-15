def add(first, second) 
  first + second
end

def subtract(first, second)
  first - second
end

def multiply(first, second)
  first*second
end

def divide(first, second)
  first/second
end

def exponent(first, second)
  first**second
end

def square_root(first)
  Math.sqrt(first)
end


off = false


while !off
  print "Enter your first number: "
  first = gets.chomp.to_i
  print "Enter your operation (+,-,/,*,^,sqrt) "
  operation = gets.chomp
  print "Enter your second number: " unless operation == "sqrt"
  second = gets.chomp.to_i unless operation == "sqrt"
  result = nil
 
  case operation
  when "+"
    result = add(first, second)
  when "-"
    result = subtract(first, second)  
  when "*"
    result = multiply(first, second)
  when "/"
    result = divide(first, second)
  when "^"
    result = exponent(first, second)
  when "sqrt"
    result = square_root(first)
  else
    puts "Error"
    break
  end
    puts result

  puts "Turn off (y/n)? "
   if gets.chomp != "n" 
      off = true
  end
end


