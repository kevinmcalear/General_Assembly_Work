puts "TIP CALCULATOR.  Please enter the price of the meal"
meal = gets.chomp.to_i

puts "How much was the tax?"
tax = gets.chomp.to_f

puts "What percentage would you like to tip?"
tip = gets.chomp.to_f

total = (meal + (meal * tax) + (meal * tip)).round(2)

puts "Your total is $#{total}."