=begin
- This should be done in a new file called tip.rb
- The user should be asked to enter the price of their meal
- The user should be asked to enter what the tax percentage is
- The user should be asked to enter what percentage they would like to tip
- After these three options have been entered, the user should see an appropriate displayed output with their total
  - For example:
  `Your total is $15.47`
=end

  puts "What was the price of your meal?"
  meal_price = gets.chomp.to_f
  puts "What is your local tax rate?"
  tax_rate = gets.chomp.to_f
  tax_rate = tax_rate * 0.01
 puts "What percentage would you like to tip?"
 tip_rate = gets.chomp.to_f
 tip_rate = tip_rate * 0.01
 puts "Your total bill is: \n
Cost of Meal: $#{meal_price}
Total Tax: $#{(meal_price * tax_rate).round(2)}
Total Tip: $#{(tip_rate * ((meal_price * tax_rate) + meal_price)).round(2)}
Total Price: $#{(meal_price + (meal_price * tax_rate) + (meal_price * tip_rate)).round(2)}\n"


