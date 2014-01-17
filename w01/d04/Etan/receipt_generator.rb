puts "What's the name of your favorite company?"
company = gets.chomp

puts "What's the name of your favorite product from #{company}?"
product = gets.chomp

puts "What is the cost of #{product} from #{company}?"
cost = gets.chomp

f = File.new("receipt.txt", "w")

f.puts "Company Name: #{company}"
f.puts "Good/Service Provided: #{product}"
f.puts "Cost: $#{cost}"

f.close