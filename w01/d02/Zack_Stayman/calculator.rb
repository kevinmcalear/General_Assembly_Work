puts "CALC"

action = nil

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

while action != "q"
puts "do you want to (a)dd, (s)ubtract, (m)ultiply, (d)ivide, or (q)uit?"
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
  elsif action == "q"
    puts "goodbye"
  else
    puts "ERROR: Invalid entry please make another"
    action=gets.chomp
  end
end
