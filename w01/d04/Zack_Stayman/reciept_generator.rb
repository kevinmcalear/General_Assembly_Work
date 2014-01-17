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
puts`clear`
puts "---- GA WDI RECIEPT GENERATOR ----"
puts "What company did you do business with?"
company = gets.chomp

puts "What good or service did you recieve?"
service = gets.chomp

puts "How much did the good or service cost?"
cost = gets.chomp.to_f

f = File.new("reciept.txt", "w")
f.puts "Company Name: #{company}" 
f.puts "Good/Service Provided: #{service}"
f.puts "Cost: $#{cost.round(2)}" 
f.puts "Thank you for your patronage!"


f.close
`subl reciept.txt`
