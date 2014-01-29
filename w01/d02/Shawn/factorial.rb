#factorial.rb

puts "What number would you like to find the factorial of?"

number = gets.chomp.to_i
number2 = 1
max = number

while number2 < max
  puts "...adding one to number2..."
  number2 += 1

  number = number * number2

  puts number2, number



  end

