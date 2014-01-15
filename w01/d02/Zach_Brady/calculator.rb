on_off = ""
operation = ""

while on_off != "exit" && on_off !=  "Exit" && on_off !=  "quit" && on_off !=  "Quit" && on_off !=  "q" && on_off !=  "Q"
  puts ""
  puts "Welcome to the Obtuse Calculator. "
  puts "Which operation do you wish be performed?"
  puts "Addition"
  puts "Subtraction"
  puts "Multiplication"
  puts "Division"
  puts "Exponent"
  puts "Square Root"
  puts "Exit"
  puts ""

  operation = gets.chomp

  if operation != "exit" && operation !=  "Exit" && operation !=  "quit" && operation !=  "Quit" && operation !=  "q" && operation !=  "Q"

    puts ""
    puts "What is the first number you wish to compute? "
    x = gets.chomp.to_f
    puts "What is the second number you wish to compute? "
    y = gets.chomp.to_f
    puts ""

    case operation
    when "Addition" 
      puts "The sum of #{x} and #{y} is #{x + y}. "
    when "Subtraction" 
      puts "The difference between #{x} and #{y} is #{x - y}. "
    when "Multiplication"
      puts "The product of #{x} and #{y} is #{x * y}. "
    when "Division" 
      puts "#{x} divided by #{y} is #{x / y}. "
    when "Exponent"
      puts "#{x} to the #{y} power is #{x**y}. "
    when "Square Root"
      puts "The square root of #{x} is #{Math.sqrt(x)}. "
      puts "The square root of #{y} is #{Math.sqrt(y)}. "
    else
      puts "Sorry I don't understand. "
    end
    puts ""
  
  end

  puts "Do you want to quit the calculator or do you wish to continue calculating? "
  on_off = gets.chomp
end


