# def tax (x, y)
#   return x * (y * 0.01)
# end

puts "What is the price of your meal?"
meal_price = gets.chomp.to_f
puts "What percentage is the tax?(in decimal)"
meal_tax = gets.chomp.to_f
puts "What percentage would you like to tip? (in decimal)"
meal_tip = gets.chomp.to_f
total = meal_price + (meal_price * meal_tax) + (meal_price * meal_tip).round(2)
puts "your mea total is #{total}"

# def tax (x, y)
#   return x * (y * 0.01)
# end

# ans = tax(meal_price, meal_tax)
# puts "Your tax is #{tax}"



# def meal_total (meal_price, meal_tax, meal_tip)
#   return (meal_price * (meal_tax * 0.01)) * (meal_tip * 0.01)
# end

