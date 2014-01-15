# ### Tip Calculator
# - This should be done in a new file called tip.rb
# - The user should be asked to enter the price of their meal
# - The user should be asked to enter what the tax percentage is
# - The user should be asked to enter what percentage they would like to tip
# - After these three options have been entered, the user should see an appropriate displayed output with their total
#   - For example:
#   `Your total is $15.47`

puts " Enter the price of your meal:"
price = gets.chomp.to_f
puts "What is the tax percentage:"
tax = gets.chomp.to_f
total1 = price * tax
puts "What percentage would you like to tip?"
tip = gets.chomp.to_f
total2 = price * tip
total3 = price + total1 + total2
puts "your meal costs #{price} the tax was #{tax}% and the tip was #{tip}%, so your total is $#{total3.round(2)}."