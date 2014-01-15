puts "How much was your meal?"
print "$"
cost = gets.chomp.to_f

puts "What is the tax rate?"

tax = gets.chomp.to_i
tax = tax * 0.01

puts "How much would you like to tip?"
print "$"
tip = gets.chomp.to_f

puts "Your total cost for this meal is $#{cost + (cost * tax) + tip}"

# puts "How much was your meal?"
# print "$"
# cost = (gets.chomp).round(2)


# puts "What is the tax rate?"

# tax = gets.chomp.to_i
# tax = tax * 0.01

# puts "How much would you like to tip?"
# print "$"
# tip = (gets.chomp).round(2)

# total = (cost + (cost * tax) + tip).round(2)

# puts "Your total cost for this meal is $#{total}"
