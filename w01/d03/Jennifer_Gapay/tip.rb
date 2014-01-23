# ### Tip Calculator
# - This should be done in a new file called tip.rb
# - The user should be asked to enter the price of their meal
# - The user should be asked to enter what the tax percentage is
# - The user should be asked to enter what percentage they would like to tip
# - After these three options have been entered, the user should see an appropriate displayed output with their total
#   - For example:
#   `Your total is $15.47

puts "TIP CALCULATOR.  Please enter the price of the meal"
meal_price = gets.chomp.to_i

puts "How much was the tax?"
tax = gets.chomp.to_f

puts "What percentage would you like to tip?"
tip = gets.chomp.to_f

total = (meal_price + (meal_price * tax) + (meal_price * tip)).round(2)

puts "Your total is $#{total}."

