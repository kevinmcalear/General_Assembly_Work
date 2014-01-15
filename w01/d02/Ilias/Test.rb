def prompt
  puts "Enter first number"
  $x = gets.chomp.to_i
  puts "Enter second number"
  $y = gets.chomp.to_i
end

def add(x,y)
  puts x+y
  return x+y
end

def sub(x,y)
  puts x-y
  return x-y
end

def mult(x,y)
  puts x*y
  return x*y
end

def div(x,y)
  puts x/y
  return x/y
end

def exp(x,y)
  puts x ** y
  return x ** y
end


puts "\n\n\t***ÜberCalc***"
puts "Select (b)asic (a)dvanced or (q)uit"
input = gets.chomp

if input == "b"
  puts "Select (a)ddition (s)ubtraction (m)ultiplication or (d)ivision"
  operation = gets.chomp.downcase
    case operation
      when "a" 
        prompt
        add($x,$y)
      when "s"
        prompt
        sub($x,$y)
      when "m"
        prompt
      else
        puts "Come again?"
        operation = gets.chomp.downcase
    end
  else
    exit
end