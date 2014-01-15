n = ['ts', '34th', '28th-n', '23rd-n', 'us', '8th-n']

puts "Where are you?"
start = gets.chomp

puts "Where are you going?"
finish = gets.chomp

start_position = n.index(start)
finish_position = n.index(finish)

dist = (finish_position - start_position).abs

puts "You need to go #{dist} stops to reach your definition."