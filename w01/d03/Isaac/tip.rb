puts "Enter the price of your meal"
price = gets.chomp.to_f
puts "Enter the tax percentage"
tax_rate = gets.chomp.to_f
puts "What percentage would you like to tip"
tip_rate = gets.chomp.to_f
total = price + (price * (tax_rate/100)) + (price * (tip_rate/100))
print total.round(2)