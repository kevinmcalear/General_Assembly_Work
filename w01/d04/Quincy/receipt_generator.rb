puts "Please name a company that you have patronized?"
patron = gets.chomp
puts "What goods or services do that provide?"
goods = gets.chomp
puts "How much do they charge?"
charge = gets.chomp

f = File.new("receipt.txt", "a+")
f.puts "#{patron}"
f.puts "#{goods}"
f.puts "#{charge}"
f.puts " Thank you for your patronage!" 
f.close