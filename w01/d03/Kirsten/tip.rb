puts "What was the price of the meal?"
price = gets.chomp.to_f

puts "What is the tax percentage?"
tax = gets.chomp.to_f

puts "What percentage would you like to tip?"
tip = gets.chomp.to_f

def convert(x)
  z = (x.to_f + 100) / 100
  return z
end

tax_new = convert(tax)
tip_new = convert(tip)

def total(a, b, c)
  (a * b) * c
end

result = total(price, tax_new, tip_new)
puts "Your total is $#{result.round(2) } "