print "Company: "
company  = gets.chomp

print "Good: "
good = gets.chomp

print "$: "
price  = gets.chomp

f= File.new("receipt.txt", "w")  

f.puts "---"
f.puts "Company Name: #{company}"
f.puts "Good/Service Provided: #{good}"
f.puts "Cost: $#{price}"
f.puts
f.puts
f.puts "Thank you for your patronage!"

f.close