nline = ["Times Square", "34th", "28th", "23rd", "Union Square", "8th"]
nline.each {|stop| puts stop}

puts "What stop would you like to get on at?"
embark = gets.chomp
first = nline.index(embark)

puts "What stop would you like to get off on?"
disembark = gets.chomp
last = nline.index(disembark)

total = (last - first).abs
puts "This trip will take you #{total} stops."