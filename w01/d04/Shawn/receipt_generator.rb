puts "What company have you patronized?"

company = gets.chomp

puts "Please describe the good or service which #{company} provided..."

service = gets.chomp

puts "How much did the goods/service cost?"

cost = gets.chomp

f = File.new("receipt.txt", "w")


  f.puts "----------------"
  f.puts "Company Name: #{company}"
  f.puts "Good/Service Provided: #{service}"
  f.puts "Cost: $#{cost}"
  f.puts 
  f.puts "Thank you for your patronage"



f.close