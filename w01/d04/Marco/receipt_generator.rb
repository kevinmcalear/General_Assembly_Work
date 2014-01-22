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

puts "Please enter a place of business you have recently patronized."

business_name = gets.chomp.downcase

puts "Please enter the name of a good or service you were provided."

good_or_service_received = gets.chomp.downcase

puts "What was the cost of this good or service?"
print "$"

cost = gets.chomp.to_f

f = File.new("receipt.txt", "w")

  f.puts "---"
  f.puts "Company Name: #{business_name.capitalize}"
  f.puts "Good/Service Provided: #{good_or_service_received}"
  f.puts "Cost: $#{cost}"
  f.puts 
  f.puts "Thank you for your patronage!"
  f.puts "---"


f.close

