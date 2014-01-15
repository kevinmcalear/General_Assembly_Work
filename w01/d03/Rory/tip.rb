def to_dollars(x)
	"$" + x.to_s
end


puts "Enter the price of your meal."
price = gets.chomp.to_s
price.gsub("$", ).to_i
puts "What is the tax percentage?"
tax = gets.chomp.to_f.round(2)
puts "What percentage would you like to tip?"
percentage = gets.chomp.to_f.round(2)

tip = (price - (price * tax))* (1 + percentage)
puts to_dollars(tip)


