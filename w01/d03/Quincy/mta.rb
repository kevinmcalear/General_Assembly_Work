n = ['ts', '34th', '28th-n', '23rd-n', 'us']
l = ['8th', '6th', 'us', '3rd', '1st']
s = ['gc', '33rd', '28th-s', '23rd-s', 'us']
mta = {}
mta[:n] = n
mta[:l] = l
mta[:s] = s

puts "What stop do you want to get on at: #{n}?"
start = gets.chomp.downcase
puts "What stop do you want to get off at: #{n}?"
stop = gets.chomp.downcase

start_index = n.index(start)
stop_index = n.index(stop)

p total_stops = (start_index - stop_index).abs