puts "Welcome to to tip calculator"
puts "Please enter the price of your meal first"
price = gets.chomp.to_f
puts "Please enter the tax amount"
tax = gets.chomp.to_f / 100
puts "your tax is #{tax}"
puts "And please enter the tip precentege you'd like to give"
tip_percent = gets.chomp.to_f / 100
puts "your tip percent #{tip_percent}"
your_tax = price * tax
price_w_tax = your_tax + price
tip = price_w_tax * tip_percent
total = tip + price_w_tax
puts "Your tip amount is $#{tip.round(2)} and your grand total is $#{total.round(2)}"