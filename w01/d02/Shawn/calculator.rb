#calculator.rb 
#Shawn Broukhim
#Homework Assignment

def welcome
puts "Hi again...What kind of calculation would you like to do? (b)asic or (a)dvanced?"
    basic_or_advanced = gets.chomp
    if basic_or_advanced == 'b'
        puts "Initializing basic calculation mode..."
        puts "Would you like to do (a)ddition, (s)ubtraction, (m)ultiplication, or (d)ivision?"
        calculation_type = gets.chomp
            if calculation_type == "a"
                addition()
            elsif calculation_type == "s"
                subtraction()
            elsif calculation_type == "m"
                multiplication()
            elsif calculation_type == "d"
            division()
          else
            false
            end
      elsif basic_or_advanced == 'a'
        puts "initializing advanced calculation mode..."
        puts "Would you like to calculate an (e)xponent,  (s)quare-root, (f)actorial, or (t)rigonometric function?"
        calculation_type = gets.chomp
            if calculation_type == 'e'
              exponent()
            elsif calculation_type == 's'
              sqrt()
            elsif calculation_type == 'f'
              factorial()  
            elsif calculation_type == 't'
              trigonometry()
            else 
              false
            end
          else
            puts "Error...exiting application... u suck..."
            false
      end
    
    end



  def addition()
  puts "What's the first number you'd like to add?"
  first_number = gets.chomp.to_f
  puts "What's the second number you'd like to add?"
  second_number = gets.chomp.to_f
  puts "Okay...the sum of #{first_number} and #{second_number} is #{first_number + second_number}"
  again?()
end

def subtraction()
    puts "What's the first number you'd like to subtract?"
    first_number = gets.chomp.to_f
    puts "What would you like to subtract #{first_number} by?"
    second_number = gets.chomp.to_f
    puts "Okay...the difference between #{first_number} and #{second_number} is #{first_number - second_number}"
    again?()
  end

def multiplication()
  puts "What's the first number you'd like to multiply?"
  first_number = gets.chomp.to_f
  puts "What's the second number you'd like to multiply by?"
  second_number = gets.chomp.to_f
  puts "Okay...the product of #{first_number} and #{second_number} is #{first_number * second_number}"
  again?()
end

def division()
  puts "What number would you like to divide?"
  dividend = gets.chomp.to_f
  puts "What number would you like to divide by?"
  divisor = gets.chomp.to_f
  puts "Okay...the quotient of #{dividend} ÷ #{divisor} is #{dividend/divisor}"
  again?()
end

def exponent()
    puts "What's the base of your exponent?"
    base = gets.chomp.to_f
    puts "What's the power?"
    power = gets.chomp.to_f
    puts "Okay...#{base} to the power of #{power} is #{base ** power}"
    again?()
  end

  def sqrt()
    puts "What number would you like to find the square root of?"
    number = gets.chomp.to_f
    puts "Okay...the square root of #{number} is #{Math::sqrt(number)}"
    again?()
  end

  def factorial()
    puts "What number would you like to find the factorial of?"
    number = gets.chomp.to_i
    number2 = 1
    max = number

    while number2 != max
        number = number * number2
          number2 += 1
      end
    puts "Okay...The factorial of #{max} is #{number}"
    again?()
  end

  def trigonometry
    puts "Would you like to calculate (s)in, (c)os, or (t)an?"
    trig_type = gets.chomp
    if trig_type == "s"
      puts "What number would you like to find the sin of?"
      number = gets.chomp.to_f
      puts "Okay...the sin of #{number} is #{Math::sin(number)}"
      again?()
    elsif trig_type == "t"
      puts "What number would you like to find the tan of?"
      number = gets.chomp.to_f
      puts "Okay...the tan of #{number} is #{Math::tan(number)}"
      again?()
    elsif trig_type == "c"
      puts "What number would you like to find the cosin of?"
      number = gets.chomp.to_f
      puts "Okay...the cosin of #{number} is #{Math::cos(number)}"
      again?()
    else
      puts "Error...try again..."
      welcome()
    end
  end


def again?()
  puts "Would you like to compute another calculation? 'Y' or 'N'"
  response = gets.chomp.upcase!
  if response == 'Y'
    welcome()
  else
    puts "Until next time..."
    false
  end
end




  welcome()
 