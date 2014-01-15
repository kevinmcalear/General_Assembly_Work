#Caluculates total bill with user inputted % tip included

puts "What is the price of your meal?"
base_price = gets.chomp.to_f
puts "What is the percentage tax?"
tax = gets.chomp.to_f
puts "What percentage would you like to tip?"
tip = gets.chomp.to_f

total = base_price + base_price*(tax/100)
total = total + total*(tip/100)

puts "Your total is $#{total.number_to_currency}"