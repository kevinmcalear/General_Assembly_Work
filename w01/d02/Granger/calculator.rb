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

def sin(first)
  Math.sin(first)
end

def cos(first)
  Math.cos(first)
end

def tan(first)
  Math.tan(first)
end

def fac(first)
  fac = 1
  (1..first).to_a.each do |el|
    fac *= el
  end

  fac
end




off = false


while !off
  print "Enter your first number: "
  first = gets.chomp.to_i
  print "Enter your operation (+,-,/,*,^,sqrt, sin, cos, tan, !) "
  operation = gets.chomp

  single_operation = false
  if operation == "sqrt" || operation == "sin" || operation == "cos" || operation == "tan" || operation == "!"
    single_operation = true
  end

  print "Enter your second number: " unless single_operation
  second = gets.chomp.to_i unless single_operation
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
  when "sin"
    result = sin(first)
  when "cos"
    result = cos(first)
  when "tan"
    result = tan(first)
  when "!"
    result = fac(first)
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


