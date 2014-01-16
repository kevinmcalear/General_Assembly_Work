##INPUT##
puts "Please, enter the price of your meal."
price = gets.chomp.to_f

puts "Enter the tax %"
tax = gets.chomp.to_f

puts "What %, after tax, would you like to tip?"
tip = gets.chomp.to_f

##OUTPUT##
total = price * ( 1 + ( tax/100 ) ) * ( 1+ ( tip/100 ) )
puts "Your total is: $#{total.round(2)}"
exit