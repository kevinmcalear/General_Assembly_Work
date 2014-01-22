puts "Please enter the total price of your meal, pre-tax. "
base_price = gets.chomp.to_f
puts "What is the tax rate? (As a percentage. ) "
tax_rate = gets.chomp.to_f / 100
puts "What percentage would you like to tip? "
tip_rate = gets.chomp.to_f / 100
puts "Your total is #{(base_price + (base_price*tax_rate) + (base_price*tip_rate)).round(2)}"