puts "What is the name of a company you've patronized?"
company = gets.chomp
puts "What's the name of the good/service?"
good = gets.chomp
puts "What was the cost of this good/service?"
cost = gets.chomp

f = File.new("receipt.txt", "w")
f.puts "Company Name: #{company}"
f.puts "Good/Service provided: #{good}"
f.puts "Cost: $#{cost}"
f.puts
f.puts "Thank you for your patronage!"
f.close