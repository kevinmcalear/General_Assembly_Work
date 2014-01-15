puts "How much did your meal cost?"
cost = gets.chomp.to_f
puts "What is your tax rate?"
tax = ((gets.chomp.to_f)*0.01)
puts "What percentage would you like to tip?"
tip = ((gets.chomp.to_f)*0.01)

tip_a = cost * tip
tax_a = cost * tax

puts "You should pay $#{(cost + tax_a + tip_a).round(2)} for a tip amount of $#{tip_a.round(2)}."