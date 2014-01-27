
puts "What company do you patronize?"
companyname = gets.chomp
puts "What services does the company provide?"
service = gets.chomp
puts "What is the cost of the good/service provided?"
cost= gets.chomp

f = File.new("receipt.txt","w") 
f.puts "What company do you patronize? #{companyname}"
f.puts "What services does the company provide? #{service}"
f.puts "What is the cost of the good/service provided? #{cost}"

f.close
 
 company = gets.chomp
 service = gets.chomp
 money = gets.chomp

f = File.new("receipt.txt","w")
puts "What company do you patronize?"
companyname = gets.chomp
puts "What services does the company provide?"
service = gets.chomp
puts "What is the cost of the good/service provided?"
money = gets.chomp

f.puts "---"
f.puts 
f.puts "Company Name: #{company}"
f.puts "Good/Service Provided: #{company}"
f.puts "Cost: #{company}"
f.puts "----"

f.close