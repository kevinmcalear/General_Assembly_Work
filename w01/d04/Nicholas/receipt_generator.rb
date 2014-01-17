puts "What is the name of the company you patronized?"
company = gets.chomp

puts "What was the good or service provided?"
goods_service = gets.chomp

puts "What was the cost of that?"
cost = gets.chomp

f = File.open("receipt.txt", "a+")
f.puts "-------------------------------------------"
f.puts "Company Name: #{company}"
f.puts "Good/Service Provided: #{goods_service}"
f.puts "Cost: $#{cost}"
f.puts
f.puts "Thank you for your patronage!"
f.puts "-------------------------------------------"
f.close
