puts "Type in the price of your meal"
meal = gets.chomp.to_f

puts "Enter the tax percentage:"
tax = gets.chomp.to_f

puts "What percentage would you like to tip?"
tip = gets.chomp.to_f

tax_calc = meal * (tax/100) 
tip_calc =  meal * (tip/100)

puts "Your meal is $#{meal + tax_calc + tip_calc}"