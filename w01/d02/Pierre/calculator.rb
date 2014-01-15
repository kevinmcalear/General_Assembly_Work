#Pierre Gergis Ruby Calculator

def add()
  print "First number: "
  a = gets.chomp.to_i
  print "Second number: "
  b = gets.chomp.to_i

  return a+b
end

def subtract()
  print "First number: "
  a = gets.chomp.to_i
  print "Second number: "
  b = gets.chomp.to_i

  return a-b
end

def multiply()
  print "First number: "
  a = gets.chomp.to_i
  print "Second number: "
  b = gets.chomp.to_i

  return a*b
end

def divide()
  print "First number: "
  a = gets.chomp.to_i
  print "Second number: "
  b = gets.chomp.to_i
  
  return a/b
end

def exponent()
  print "Base: "
  base = gets.chomp.to_i
  print "Exponent: "
  exp = gets.chomp.to_i

  return base**exp
end

def square_root()
  print "Number: "
  n = gets.chomp.to_i

  return sqrt(n)
end

def sine()
  print "Number (radians): "
  n = gets.chomp.to_i

  return Math::sin(n)
end

def cosine()
  print "Number (radians): "
  n = gets.chomp.to_i

  return Math::cos(n)
end

def tangent()
  print "Number (radians): "
  n = gets.chomp.to_i

  return Math::tan(n)
end

def factorial()
  print "Number: "
  n = gets.chomp.to_i

  f = 1
  for i in 1..n
    f*=i
  end

  return f
end

def main_menu()
  choice = nil

  while choice == nil
    puts "\e[H\e[2J"
    puts "******************************************"
    puts "Welcome to Pierre Gergis' Ruby Calculator!"
    puts "******************************************\n\n"
    puts "Select from the following:"
    puts "(b)asic    |     (a)dvanced    |     (q)uit\n\n"

    choice = gets.chomp

    if choice == "q"
      return nil
    elsif choice == "b"
      basic_menu()
    elsif choice == "a"
      advanced_menu()
    end

    choice = nil
  end
end

def basic_menu()
  choice = nil

  while choice == nil
    puts "\e[H\e[2J"
    puts "What do you want to do?"
    puts "(a)dd   |   (s)ubtract    |   (m)ultiply    |   (d)ivide    |   (b)ack\n\n"

    choice = gets.chomp

    if choice == "b"
      main_menu()
    elsif choice == "a"
      puts "Result: #{add()}"
    elsif choice == "s"
      puts "Result: #{subtract()}"
    elsif choice == "m"
      puts "Result: #{multiply()}"
    elsif choice == "d"
      puts "Result: #{divide()}"
    else
      choice = nil
    end
  end
  gets()
  return nil
end

def advanced_menu()
  choice = nil

  while choice == nil
    puts "\e[H\e[2J"
    puts "What do you want to do?"
    puts "(e)xponent   |   (s)quare root    |   (t)rig    |   (f)actorial    |   (b)ack\n\n"

    choice = gets.chomp

    if choice == "b"
      main_menu()
    elsif choice == "e"
      puts "Result: #{exponent()}"
    elsif choice == "s"
      puts "Result: #{square_root()}"
    elsif choice == "t"
      trig_menu()
    elsif choice == "f"
      puts "Result: #{factorial()}"
    else
      choice = nil
    end
  end
  gets()
  return nil
end

def trig_menu()
  choice = nil

  while choice == nil
    puts "\e[H\e[2J"
    puts "What do you want to do?"
    puts "(s)in   |   (c)os    |   (t)an    |   (b)ack\n\n"

    choice = gets.chomp

    if choice == "b"
      advanced_menu()
    elsif choice == "s"
      puts "Result: #{sine()}"
    elsif choice == "c"
      puts "Result: #{cosine()}"
    elsif choice == "t"
      puts "Result: #{tangent()}"
    else
      choice = nil
    end
  end
  return nil
end

main_menu()