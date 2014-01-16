puts "How much did your food cost?"
cost = gets.chomp.to_f
puts "What's Uncle Sam's cut??"
tax = gets.chomp.to_f
puts "What percent should we tip?"
tip = gets.chomp.to_f

puts "The total is $#{(cost*(1+(tax*0.01))*(1+(tip*0.01))).round(3)}"