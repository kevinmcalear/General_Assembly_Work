n = ["Times Square", "34th", "28th", "23rd", "Union Square", "8th"]

#puts "What line are you starting on?"
puts "Pick the starting stop?"
n.each do |stop|
	puts stop
end
start = n.index(gets.chomp)
puts "Pick the final stop?"
final = n.index(gets.chomp)
stops = (final-start).abs
puts "There are #{stops} stops"
