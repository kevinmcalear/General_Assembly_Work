puts "Enter the price of your meal:"
price = gets.chomp.to_f

puts "What is the tax percent?"
tax = gets.chomp.to_f
taxnum = (tax * 0.01)
newprice = taxnum + price

puts "What percent would you like to tip?"
tip = gets.chomp.to_f
tipnum = (tip * 0.01)
totaltip = newprice * tipnum

total = newprice + totaltip
puts "Your total is $#{total.round(2)}"
