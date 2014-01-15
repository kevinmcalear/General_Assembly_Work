puts "What was the cost of your meal?"
meal_price = gets.chomp.to_i

puts "What is the amount of your local tax in decimal?"
tax = gets.chomp.to_f.round(2)

puts "What percentage would you like to tip in decimal?"
tip = gets.chomp.to_f.round(2)

puts "Your meal total is: $#{meal_price + (meal_price * tax) + (meal_price * tip)}."