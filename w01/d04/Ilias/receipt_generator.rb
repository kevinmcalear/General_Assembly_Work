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
# ---

f = File.new("receipt.txt", "w")

puts "What company did you patronize?"
company = gets.chomp

puts "What did you buy?"
purchase = gets.chomp

puts "How much did it cost?"
cost = gets.chomp.to_f

f.puts "---"
f.puts ""
f.puts "Company Name: #{company}"
f.puts "Good/Service Provided: #{purchase}"
f.puts "Cost: $#{cost.round(2)}"
f.puts ""
f.puts "Thank you for your patronage!"
f.puts "---"

f.close