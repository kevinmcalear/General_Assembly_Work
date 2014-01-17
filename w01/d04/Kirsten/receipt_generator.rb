puts "What company did you patronize?"
company = gets.chomp

puts "What goods or service did they provide?"
item = gets.chomp

puts "What was the cost?"
cost = gets.chomp

f = File.new("receipt_#{company}.txt", "w")
  f.puts "---"
  f.puts "Company Name: #{company}"
  f.puts "Goods/Service Provided: #{item}"
  f.puts "Cost: $#{cost}"
  f.puts
  f.puts "Thank you for your patronage!"
  f.puts "---"
f.close

`subl receipt_#{company}.txt`