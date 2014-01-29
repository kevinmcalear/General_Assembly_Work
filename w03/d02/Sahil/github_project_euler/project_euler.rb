print "Max number for range? (inclusive)"
MAX = gets.chomp.to_i
print "Enter first multiple: "
MULT1 = gets.chomp.to_i
print "Enter second multiple: "
MULT2 = gets.chomp.to_i

sum = 0
1.upto(MAX) do |num|
  if num % MULT1 == 0 || num % MULT2 == 0
    sum += num
  end
end
puts sum