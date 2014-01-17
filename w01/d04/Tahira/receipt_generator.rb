puts "What is the name of the company you patronized?"
company = gets.chomp
puts "What is the name of a good/service provided?"
good = gets.chomp
puts "What was the cost of the item?"
cost = gets.chomp

f = File.new("receipt_#{company}.txt", "a+")
  f.puts "---"
  f.puts "Company Name: #{company}"
  f.puts "Good/Service Provided: #{good}"
  f.puts "Cost: #{cost}"
  f.puts ""
  f.puts "Thanks you for your patronage!"
  f.puts "---"
f.close

`subl receipt_#{company}.txt`