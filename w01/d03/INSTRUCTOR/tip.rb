puts "What was the cost?"
meal_price = gets.chomp.to_i
puts "What is the amount of your local tax in decimal"
tax = gets.chomp.to_f
puts "What % would you like to tip? (In decimal please!)"
tip = gets.chomp.to_f
total = (meal_price + (meal_price * tax) + (meal_price * tip)).round(2)
puts "Your meal total was $#{total}."