=begin
1. Asks the user for the name of a company they patronized.
2. Asks the user for the name of a good/service provided.
3. Asks the user for the cost of a good/service provided.
4. Creates and saves a text file named receipt.txt that looks like:

---
Company Name: Particular Assembly Inc.
Good/Service Provided: Web-Development Refactoring
Cost: $1,329.99
=end

puts "What company did you visit?"
company = gets.chomp
puts "What good or service was provided?"
item = gets.chomp
puts "How much was that good or service?"
cost = gets.chomp.to_f


f = File.new("#{company}_receipt.txt", "w")
	f.puts "Company name: #{company}"
	f.puts "Good/Service: #{item}"
	f.puts "Total: $#{cost}"
	f.puts "Thank you for your patronage!"
f.close