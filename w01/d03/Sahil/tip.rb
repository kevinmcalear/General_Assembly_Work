puts "whats the price of the meal?"
price = gets.chomp.to_f
puts "What's the percentage of tax on the meal?"
tax = gets.chomp.to_f * 1.01
puts "What percentage would you like to tip?"
tip = gets.chomp.to_f * 1.01
total = (price*tax*tip).round(2)
puts "Your total is #{total}"