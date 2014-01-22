# 1. Asks the user for the name of a company they patronized
puts "What companies have you recently patronized? "
company_name = gets.chomp

# 2. Asks the user for the name of a good/service provided.
puts "What good or service did they provide? "
company_product = gets.chomp

# 3. Asks the user for the cost of a good/service provided.
puts "And how much did this set you back? "
cost = gets.chomp

# # 4. Creates and saves a text file named receipt.txt that looks like:

# ---
# Company Name: Particular Assembly Inc.
# Good/Service Provided: Web-Development Refactoring
# Cost: $1,329.99

# Thank you for your patronage!
# ---

f = File.open("receipt.md", "a")
f.puts "---"
f.puts "Company Name: #{company_name}"
f.puts "Good/Service Provided: #{company_product}"
f.puts "Cost: #{cost}"
f.puts ""
f.puts "Thank you for your patronage!"
f.puts "---"
f.close