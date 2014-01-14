puts "What type of calculator do you need?"
puts "basic or advanced?"
choice = gets.chomp

if choice == "basic"
puts "What would you like to do?"
puts "add, subtract, multiply, divide"
function = gets.chomp

case function
when "add"
  puts "first number?"
  first_a = gets.chomp.to_i
  puts "second number?"
  second_a = gets.chomp.to_i
  puts "#{first_a + second_a}"
when "subtract"
  puts "first number?"
  first_s = gets.chomp.to_i
  puts "second number?"
  second_s = gets.chomp.to_i
  puts "#{first_s - second_s}"
when "multiply"
  puts "first number?"
  first_m = gets.chomp.to_i
  puts "second number?"
  second_m = gets.chomp.to_i
  puts "#{first_m * second_m}"
when "divide"
  puts "first number?"
  first_d = gets.chomp.to_i
  puts "second number?"
  second_d = gets.chomp.to_i
  puts "#{first_d / second_d}"
else
  puts "I didn't understand that"
end
end

if choice == "advanced"
  puts "What would you like to do?"
  puts "exponent, square root"
  function = gets.chomp

  if function == "exponent"
    puts "base number?"
    base = gets.chomp.to_i
    puts "exponent?"
    exponent = gets.chomp. to_i
    puts "#{base ** exponent}"
  elsif function == "square root"
    puts "number?"
    number = gets.chomp.to_i
    puts "#{Math.sqrt(number)}"
  else
  puts "I didn't understand that"
end

else puts "I didn't understand that"
end
