puts "What company did you use?"
company = gets.chomp

puts "What goods/services did they provide?"
goods = gets.chomp

puts "What was the cost?"
cost = gets.chomp.to_f

f = File.new("reciept.txt", "w")

f.puts "---"
f.puts 
f.puts "Company Name: #{company}"
f.puts "Good/Service Provided: #{goods}"
f.puts "Cost: $#{cost.round(2)}"
f.puts ""
f.puts "Thank you for your patronage"
f.puts "---"

f.close


