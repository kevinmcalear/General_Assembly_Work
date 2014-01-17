    def addition(a, b)
      result = a + b
      puts "Result: #{result}"
    end

    def substraction(a, b)
      result = a - b
      puts "Result: #{result}"
    end

    def multiplication(a, b)
      result = a * b
      puts "Result: #{result}"
    end

    def division(a, b)
      result = a / b
      puts "Result: #{result}"
    end

    def root(a)
      result = Math.sqrt(a)
      puts "Result: #{result}"
    end

    def sin(a)
      result = Math.sin(a)
      puts "Result: #{result}"
    end

    def cos(a)
      result = Math.cos(a)
      puts "Result: #{result}"
    end

    def tan(a)
      result = Math.tan(a)
      puts "Result: #{result}"
    end

    def exponent(base, exp)
      result = base ** exp
      puts "Result: #{result}"
    end

    def factorial(num)
      fact = 1
      while num > 0
       fact = fact * num
       num = num -1
     end
     puts "Result: #{fact}"
   end

   def quit
    puts "Good bye"
    return "q"
  end

  def menu
    puts "Please choose type of calculator you want to use: ad(v)anced or (r)egular "
    input = gets.chomp
    case input
    when "r"
      puts "(a)ddition, (s)ubstraction, (m)multiplication, (d)ivision, (q)uit"
    when "v"
      puts "sq(u)are root, e(x)ponents, factoria(l), s(i)n, c(o)s, (t)an, (q)uit"
    when "q"
      return quit
    end

    operation = gets.chomp
    case operation
    when "a"
      puts "Please enter first number:"
      a = gets.chomp.to_i
      puts "Please enter the second number:"
      b = gets.chomp.to_i 
      addition(a, b)
    when "s"
      puts "Please enter first number:"
      a = gets.chomp.to_i
      puts "Please enter the second number:"
      b = gets.chomp.to_i 
      substraction(a, b)
    when "m"
      puts "Please enter first number:"
      a = gets.chomp.to_i
      puts "Please enter the second number:"
      b = gets.chomp.to_i
      multiplication(a, b)
    when "d"
      puts "Please enter first number:"
      a = gets.chomp.to_i
      puts "Please enter the second number:"
      b = gets.chomp.to_i
      division(a, b)
    when "u"
      puts "Please enter the number"
      a = gets.chomp.to_i
      root(a)
    when "i"
      puts "Please enter the number"
      a = gets.chomp.to_i
      sin(a)
    when "o"
      puts "Please enter the number"
      a = gets.chomp.to_i
      cos(a)
    when "t"
      puts "Please enter the number"
      a = gets.chomp.to_i
      tan(a)
    when "x"
      puts "Please enter the base number"
      base = gets.chomp.to_i
      puts "Exponent number"
      exp = gets.chomp.to_i
      exponent(base, exp)
    when "l"
      puts "Please enter the number"
      num = gets.chomp.to_i
      factorial(num)
    when "q"
      quit

    else
      puts "please enter first letter of any operation"
    end
    
    return operation
  end
  
  
  puts "Welcome to interactive calculator"
  operation = nil
  while operation != "q"
    operation = menu
  end


  