n = ['ts', '34th', '28th-n', '23rd-n', 'us']

puts "Where are you? ('ts', '34th', '28th-n', '23rd-n', 'us')"
start = gets.chomp.downcase

puts "Where are you going? ('ts', '34th', '28th-n', '23rd-n', 'us')"
finish = gets.chomp.downcase

x = n.index(start)
y = n.index(finish)

stops = (x - y).abs

puts "You are traveling #{stops}."
