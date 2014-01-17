puts "Enter the name of a company:"
company = gets.chomp
puts "Enter the name of a good or service from #{company}:"
good = gets.chomp
puts "What was the cost of #{good}?"
cost = gets.chomp.to_f

f = File.new("receipt.txt", "w") 
  f.puts "Company Name: #{company}"
  f.puts "Good or Service: #{good}"
  f.puts "Cost: $#{cost}"

  f.puts "Thank you for your patronage!"
  
f.close