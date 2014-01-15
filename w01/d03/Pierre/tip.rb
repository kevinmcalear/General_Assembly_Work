puts "How much did your meal cost? ($)"
bill = gets.chomp.to_f

puts "What was the tax? (%)"
bill = bill + bill * (gets.chomp.to_f / 100)

puts "How much do you want to tip? (%)"
bill = bill + bill * (gets.chomp.to_f / 100)

puts "Your total is $#{bill.round(2)}"