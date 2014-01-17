
# get user input
puts "Company?"
company = gets.chomp
puts "Service?"
service = gets.chomp
puts "Cost?"
money = gets.chomp

# create a new stream to the file ./receipt.txt with the mode "w" (overwrite file)
f = File.new("receipt.txt", "w")

f.puts "---"
f.puts 
f.puts "Company Name: #{company}"
f.puts "Good/Service Provided: #{service}"
f.puts "Cost: $#{money}"
f.puts ""
f.puts "Thank you for your patronage!"
f.puts "---"

f.close