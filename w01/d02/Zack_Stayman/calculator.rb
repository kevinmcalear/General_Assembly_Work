puts "CALC"

calc = nil

def addition(x, y)
  a = x + y
  return a
end

def subtraction(x, y)
  a = x - y
  return a
end

def multiplication(x, y)
  a = x * y
  return a
end

def division(x, y)
  a = x/y
  return a
end

def exponent(x, y)
  a = (x ** y)
  return a
end

def cos(x)
  a = Math.cos(x)
  return a
end

def sin(x)
  a = Math.sin(x)
  return a
end

def tan(x)
  a = Math.tan(x)
  return a
end

def factorial(x)
  counter = x-1.to_i
  while counter > 1
    x = x * counter
    counter -=1
  end
  a = x
  return a
end

while calc != "q"
  puts "Do you want to use the (b)asic or (a)dvanced calculator or do you want to (q)uit?"
  calc = gets.chomp

  if calc == "b"
    puts "do you want to (a)dd, (s)ubtract, (m)ultiply, or (d)ivide?"
    action = gets.chomp

    if action == "a"
      puts "what is the first number you wish to add?"
      x = gets.chomp.to_f
      puts "what is the second number you wish to add?"
      y = gets.chomp.to_f
      ans = addition(x, y)
      puts ans

    elsif action == "s"
      puts "what is the number you wish to subtract from?"
      x = gets.chomp.to_f
      puts "what is the number you wish to subtract?"
      y = gets.chomp.to_f
      ans = subtraction(x, y)
      puts ans

    elsif action == "m"
      puts "what is the first number you wish to multiply?"
      x = gets.chomp.to_f
      puts "what is the second number you wish to multiply?"
      y = gets.chomp.to_f
      ans = multiplication(x, y)
      puts ans

    elsif action == "d"
      puts "what is the number you wish to divide from?"
      x = gets.chomp.to_f
      puts "what is the number you wish to divide by?"
      y = gets.chomp.to_f
      ans = division(x, y)
      puts ans

    else
      puts "ERROR: Invalid entry please make another"
      action=gets.chomp
    end

  elsif calc == "a"
    puts "do you want to find the (e)xponent, the (s)quare root, (f)actorial, the si(n)e, the (c)osine, or the (t)angent?"
    action = gets.chomp

    if action == "e"
      puts "what is the base number?"
      x = gets.chomp.to_i
      puts "what is the exponent you want to raise it to?"
      y = gets.chomp.to_i
      ans = exponent(x, y)
      puts ans

    elsif action == "s"
      puts "what is the base number?"
      x = gets.chomp.to_f
      ans = exponent(x, 0.5)
      puts ans

    elsif action == "n"
      puts "Enter a number to get the sine"
      x = gets.chomp.to_f
      ans = sin(x)
      puts ans

    elsif action == "c"
      puts "Enter a number to get the cosine"
      x = gets.chomp.to_f
      ans = cos(x)
      puts ans

    elsif action == "t"
      x = gets.chomp.to_f
      ans = tan(x)
      puts ans

    elsif action == "f"
      puts "Please put the number that you wish to find the factorial of"
      x = gets.chomp.to_f
      ans = factorial(x)
      puts ans

    else
      puts "ERROR: Invalid entry, please make another"
      action = gets.chomp
    end

  elsif calc == "q"
    puts "goodbye"

  else
    puts "ERROR"
  end
end




