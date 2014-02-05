# def tip_total(meal, tax, tip)
 # return (meal - tax) % tip 
# end

puts "How much was your meal?"
meal = gets.chomp.to_i

puts "What was the tax percentage?"
tax = gets.chomp.to_f

puts "What percentage would you like to tip?"
tip = gets.chomp.to_f

total = (meal + (meal * tax) + (meal * tip)).round(2)

puts "Your meal total was #{total}."