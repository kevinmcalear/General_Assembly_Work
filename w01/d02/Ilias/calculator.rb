##METHODS##
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

i = 0

puts "\n\n\t***ÜberCalc***"
puts "Select (b)asic (a)dvanced or (q)uit\n"
input = gets.chomp.downcase

while input != "q" #quit function

if i > 0
puts "\n\n\t***ÜberCalc***"
puts "Select (b)asic (a)dvanced or (q)uit\n"
input = gets.chomp.downcase
else
end
i +=1


##BASIC MENU##

  if input == "b"
    puts "Select (a)ddition (s)ubtraction (m)ultiplication or (d)ivision\n"
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
          mult($x,$y)
        when "d"
          prompt
          div($x,$y)
        else
          puts "Come again?"
          operation = gets.chomp.downcase
      end

  ##ADVANCED MENU##
  elsif input == "a"
    puts "Select (e)xponent, (p)ie, or (s)qrt\n"
    operation = gets.chomp
      case operation
        when "e"
          prompt
          exp($x,$y)
        when "p"
          puts "3.14 :)"
        when "s"
          puts "Enter a number"
          x = gets.chomp.to_i
          puts Math.sqrt(x)
        else
          puts "Come again?"
          operation = gets.chomp.downcase
      end
  else
  end
end
puts "Goodbye!"
exit