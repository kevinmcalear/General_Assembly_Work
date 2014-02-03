
l = ['8th', '6th', 'us', '3rd', '1st']
s = ['gc', '33rd', '28th-s', '23rd-s', 'us']
mta = {}
mta[:n] = n
mta[:l] = l
mta[:s] = s

puts "What line would you like to get on?(l, n, s)"
start_line = gets.chomp.to_sym

case start_line
when :n
  puts n
when :l
  puts l
when :s
  puts s
end

puts "What stop would you like to get on?"
first_stop = gets.chomp

puts "What line would you like to get off? (l, n, s)"
end_line = gets.chomp.to_sym

case end_line
when :n
  puts n
when :l
  puts l
when :s
  puts s
end

puts "What stop would you like to get off?"
last_stop = gets.chomp

if start_line != end_line
  first = (mta[start_line]).index(first_stop)
  second = (mta[start_line]).index("us")
  third = (mta[end_line]).index("us")
  fourth = (mta[end_line]).index(last_stop)
  final = (fourth - third).abs + (second - first).abs
else
  first = (mta[start_line]).index(first_stop)
  second = (mta[end_line]).index(last_stop)
  final = (second - first).abs

end

puts "Your trip will be #{final} stops long!"




























# puts "What line would you like to get on? (n, l, s)"
# start_line = gets.chomp.to_sym

# case start_line
# when :n
#   puts n
# when :l
#   puts l
# when :s
#   puts s
# end

# puts "What stop would you like to get on?"
# first_stop = gets.chomp

# puts "what line is your destination stop on? (n, l, s)"
# end_line = gets.chomp.to_sym

# case end_line
# when :n
#   puts n
# when :l
#   puts l
# when :s
#   puts s
# end

# puts "What stop would you like to get off?"
# last_stop = gets.chomp

# if start_line != end_line
#   first = (mta[start_line]).index(first_stop)
#   second = (mta[start_line]).index("us")
#   third = (mta[end_line]).index("us")
#   fourth = (mta[end_line]).index(last_stop)
#   final = (fourth - third).abs + (second - first).abs
# else
#   first = (mta[start_line]).index(first_stop)
#   second = (mta[end_line]).index(last_stop)
#   final = (second - first).abs
# end

# puts "You trip will take #{final} stops!"



