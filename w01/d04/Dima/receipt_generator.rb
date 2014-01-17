puts "Please enter the name of the company you've patronized"
company = gets.chomp
puts "Pleas enter the good/service you've provided"
good = gets.chomp
puts "How much did the service/good cost? "
cost = gets.chomp.to_i

f = File.new("receipt.txt", "w")
  f.puts "---"
  f.puts "Company Name: #{company}"
  f.puts "Good/Service Provided: #{good}"
  f.puts "Cost: $#{cost}"
  f.puts ""
  f.puts "Thank you for your language!"
  f.puts "---"
f.close