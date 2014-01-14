puts "Select 1 for addition, 2 for subtraction, 3 for multiplication, 4 for division, q to quit"
option = gets.chomp
 
while option != "q"

puts "Enter first value"
x = gets.chomp.to_i
puts "Enter second value"
y = gets.chomp.to_i

case option
  when "1"
    results = x + y
  when "2"
    results = x - y
  when "3"
    results = x * y
  else
    results = x / y
end

puts results

exit

end



