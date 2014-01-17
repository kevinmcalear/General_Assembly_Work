# Create a file named: receipt_generator.rb

# Write a program in that file that:

# 1. Asks the user for the name of a company they patronized.
# 2. Asks the user for the name of a good/service provided.
# 3. Asks the user for the cost of a good/service provided.
# 4. Creates and saves a text file named receipt.txt that looks like:

# ---
# Company Name: Particular Assembly Inc.
# Good/Service Provided: Web-Development Refactoring
# Cost: $1,329.99

# Thank you for your patronage!

puts "What's your favorite store"
name = gets.chomp

puts "What kind of services/products do they provide?"
service = gets.chomp

puts "What's the average price of items/services in the store?"
price = gets.chomp

f = File.new("receipt.txt", "w")
f.puts "Company Name: #{name}"
f.puts "Good/Service Provided: #{service}"
f.puts "Cost: #{price}"
f.puts "Thank you for your patronage!"

f.close