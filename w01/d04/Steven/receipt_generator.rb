puts "What is the name of a company?"
company = gets.chomp

puts "What is a good or service they provided?"
service = gets.chomp

puts "How much did this cost?"
cost = gets.chomp

f = File.new("receipt.txt", "w") 
  f.puts "---"
  f.puts ""
  f.puts "Company Name: #{company}"
  f.puts "Good/Service Provided: #{service}"
  f.puts "Cost: #{cost}"
  f.puts "Thank you for your patronage!"
f.close 

