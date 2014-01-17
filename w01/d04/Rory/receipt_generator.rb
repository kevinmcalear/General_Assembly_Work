puts "What is the name of a company you have patronized?"
company = gets.chomp
puts "What was the good/service provided?"
good = gets.chomp
puts "What was the cost of the good/service provided?"
cost = gets.chomp

f = File.new("receipt.txt", "w")
	f.puts "---"
	f.puts
	f.puts "Company Name: #{company}"
	f.puts "Good/Service Provided: #{good}"
	f.puts "Cost: #{cost}"
	f.puts "Thank you for your patronage!"
	f.puts
	f.puts "---"
f.close
