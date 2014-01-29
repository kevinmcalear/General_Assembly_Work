#tips.rb 

puts "Please enter the price of your meal..."
price = gets.chomp.to_f

puts "What is the tax percentage on your bill?"
tax_percentage = gets.chomp.to_f

puts "What percentage would you like to tip?"
tip_percentage = gets.chomp.to_f

total = price + (price * (tax_percentage/100)) + (price * (tip_percentage/100))

puts "Okay...the total is $#{total.round(2)}"
