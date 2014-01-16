puts "What was the price of your meal? "
price = gets.chomp.to_f

puts "What is the tax ex: (7, 8, 9)% ? "
tax = gets.chomp.to_f
tax = tax/100

puts "tip: ex: 20, 15  "
tip = gets.chomp.to_f
tip = tip/100

tax_total = tax * price
tip_total = tip * price

total = (tax_total + tip_total + price).round(2)

puts "total: $#{total}"