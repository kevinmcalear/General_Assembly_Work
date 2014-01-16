puts "What was the cost of your meal?"
meal_price = gets.chomp.to_i
puts "What is the amount of your tax in decimal?"
tax = gets.chomp.to_f
puts "What would you like to tip in decimal?"
tip = gets.chomp.to_f

total = (meal_price + (meal_price * tax) + (meal_price * tip)).round(2)

puts "Your total isL $#{total}"