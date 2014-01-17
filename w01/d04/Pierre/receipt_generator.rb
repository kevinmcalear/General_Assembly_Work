puts "Where did you make your purchase?"
company = gets.chomp

puts "What did you buy?"
product = gets.chomp

puts "How much was your purchase?"
print "$"
cost = gets.chomp.to_f.round(2)

f = File.new("receipt.txt", "w")
  f.puts "---\n\nCompany Name: #{company}\nGood/Service Provided: #{product}\nCost: $#{cost}\n\nThank you for your patronage!\n\n---"
f.close