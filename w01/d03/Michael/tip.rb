puts "What was the cost of your meal?"
meal_price = gets.chomp.to_f

puts "What is the tax percentage of the meal? (ie: '15%'' enter '15')"
tax_percentage = gets.chomp.to_f / 100
tax_multiplier = tax_percentage + 1

puts "What percetage would you like to tip? (ie: '20%' enter '20')"
tip_percentage = gets.chomp.to_f / 100
tip_multiplier = tip_percentage + 1

total = meal_price * tax_multiplier * tip_multiplier
# puts meal_price
# puts tax_percentage
# puts tip_percentage
# puts tax_multiplier
# puts tip_multiplier


puts "Your total is $#{total.round(2)}."