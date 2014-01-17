puts `clear`

puts "Hello! What is the name of this company?"
company_name = gets.chomp

puts "Now please tell me the the good or service they provided"
good_or_serivce = gets.chomp

puts "Final thing, please tell me how much that set you back financially."
cost = gets.chomp

puts "Thanks! A recipt was made for you, check your files."

f = File.new("Your_Reicpt.txt", "w")

f.puts "---"
f.puts "Company Name: #{company_name}"
f.puts "Good/Service Provided: #{good_or_serivce}"
f.puts "Cost: $#{cost}"
f.puts ""
f.puts "Thank you for your patronage!"
f.puts "---"

f.close

`subl Your_Reicpt.txt`