def add(x, y)
  return x + y
end

def sub(x, y)
  return x - y
end

def mul(x, y)
  return x * y
end

def div(x, y)
  return x / y
end

def exp(x, y)
  return x ** y
end

def sq(x)
return Math.sqrt(x)
end

program = 1

while program == 1

puts "Select 1 for addition, 2 for subtraction, 3 for multiplication, 4 for division, 5 for exponents, 6 for square root, q to quit"
  type = gets.chomp

  if type == "q"
    program = 0
  elsif program == 1
    puts "Enter first value"
    x = gets.chomp.to_i
    puts "Enter second value"
    y = gets.chomp.to_i

    case type
      when "1"
        result = add(x, y)
      when "2"
        result = sub(x, y)
      when "3"
        result = mul(x, y)
      when "4"
        result = div(x, y)
      when "5"
        result = exp(x, y)
      when "6"
        result = sq(x)
      end

puts result

  end

end

