print "What is the total cost of your meal?  $"
total = gets.chomp.to_f
puts "What is the sales tax rate?"
tax = gets.chomp.to_f
puts "How was the service?  What percent tip will you give?"
tip = gets.chomp.to_f

tax_total = total * (1 + tax / 100)
grand_total = tax_total * (1 + tip / 100)
puts "The total for your meal will be $#{grand_total.round(2)}"