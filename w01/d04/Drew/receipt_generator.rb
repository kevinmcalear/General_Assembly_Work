puts "What company did you patronize?"
company = gets.chomp

puts "What was the name of the good/service provided"
service = gets.chomp

puts "What was the cost of that good/service?"
cost = gets.chomp


f = File.new("receipt.txt", "w")
  f.puts "---"
  f.puts
  f.puts "Company Name: #{company}"
  f.puts "Good/Service Provided: #{service}"
  f.puts "Cost: $#{cost}"
  f.puts
  f.puts "Thank you for your patronage!"
  f.puts
  f.puts "---"
f.close
