puts "What is the price of your meal?"
price = gets.chomp.to_i

puts "Please enter tax percentage"
percentage = gets.chomp.to_i * 0.01

puts "What percentage would you like to tip?"
tip = gets.chomp.to_i * 0.01

#def calculate_total 
  #return price 
puts (price + percentage * price + tip * price).round(3)

