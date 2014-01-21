#GATHER USER INFO

puts "Where did you shop?"
place = gets.chomp

puts "What good/service did you buy?"
bought = gets.chomp

puts "What was the cost of said item?"
print "$"
cost = gets.chomp.to_f

#MAKE THE NEW FILE

f = File.new("receipt.txt", "w") 

f.puts "Company Name: #{place}"
f.puts "Good/Service Provided: #{bought}"
f.puts "Cost: $#{cost}"
f.puts 
f.puts "Thank you for your patronage!"

f.close

