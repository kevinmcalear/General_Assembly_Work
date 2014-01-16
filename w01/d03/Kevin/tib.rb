puts "How much did your meal cost?"
meal_cost = gets.chomp.to_f

puts "What is the tax percentage on the meal?"
tax_percent = gets.chomp.to_f / 100

puts "Last thing, what percentage would you like to tip?"
tip_percent = gets.chomp.to_f / 100

tax = meal_cost * tax_percent
tip = tax * tip_percent
total = meal_cost + tax + tip
puts "Your total meal cost will be roughly $#{total.round(2)}."