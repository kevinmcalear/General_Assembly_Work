n = ['ts', '34th', '28th-n', '23rd-n', 'us']
print n
puts ""
print "Where are you now? Please enter one of of options above: "
start = gets.chomp
print "Where are you going?"
finish = gets.chomp

x = n.index(start)
y = n.index(finish)
dist = (x - y).abs

puts "You'll have to go #{dist} stops"
