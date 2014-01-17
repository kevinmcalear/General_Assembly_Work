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

# Thank you for your patronage

puts "What's the company you patronized"
company_name = gets.chomp
puts "What's the good/service that was provided"
service_provied = gets.chomp
puts "What was the cost of the service provided"
cost_provided = gets.chomp.to_i

f = File.new("receipt.txt", "w")
  f.puts "Company Name: #{company_name}"
  f.puts "Good/Service Provided: #{service_provied}"
  f.puts "Cost: #{cost_provided}"
  f.puts "Thank you for your patronage"
f.close