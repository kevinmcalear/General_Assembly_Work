def add (a,b)
  return a + b
end 
 
def subtract (a,b)
  return a - b
end

def mulitply (a,b)
  return a*b
end 

def divide (a,b)
  return a/b
end

def square_root (a)
  return Math.sqrt(a)
end 

def exponent (a,b)
  return a**b
end


puts "What would you like to calculate? 
        Enter A for adding
        Enter S for subtracting
        Enter M for multiply
        Enter D for divide 
        Enter SQRT for square root
        Enter E for exponent
        To quit, enter Q" 
 input = gets.chomp!


while input != "Q"
    if input == "A"
      puts "Enter a number"
      first_number = gets.chomp.to_i
      puts "Enter another number"
      second_number = gets.chomp.to_i
      puts add(first_number, second_number)
end

    if input == "S"
      puts "Enter a number"
      first_number = gets.chomp.to_i
      puts "Enter another number"
      second_number = gets.chomp.to_i
      puts subtract(first_number, second_number)
    end

    if input == "M"
      puts "Enter a number"
      first_number = gets.chomp.to_i
      puts "Enter another number"
      second_number = gets.chomp.to_i
      puts multiply(first_number, second_number)
    end

    if input == "D"
      puts "Enter a number"
      first_number = gets.chomp.to_i
      puts "Enter another number"
      second_number = gets.chomp.to_i
      puts divide(first_number, second_number)
    end

    if input == "SQRT"
      puts "Enter a number"
      first_number = gets.chomp.to_i
      puts square_root(first_number)
    end

    if input =="E" 
      puts "Enter a number"
      first_number = gets.chomp.to_i
      puts "Enter another number"
      second_number = gets.chomp.to_i
      puts exponent(first_number, second_number)
    end

    puts "What would you like to calculate? 
        Enter A for adding
        Enter S for subtracting
        Enter M for multiply
        Enter D for divide 
        Enter SQRT for square root
        Enter E for exponent
        To quit, enter Q" 
    input = gets.chomp!
end







