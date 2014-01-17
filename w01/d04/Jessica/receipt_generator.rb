puts "What company did you patronize?"
company = gets.chomp

puts "What is the name of the good/service that company provided?"

service = gets.chomp

puts "What is the cost of this good/service?"

cost = gets.chomp.to_f

f = File.new("receipt.txt", "w")
  f.puts "Company Name: #{company}"
  f.puts "Good/Service Provided: #{service}"
  f.puts "Cost: #{cost}"
  f.puts "Thank you for your patronage!"

f.close