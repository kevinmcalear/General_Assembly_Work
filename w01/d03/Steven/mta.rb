nline = ["TS", "34th", "28rd", "23rd", "US", "8th"]

puts nline.each {|stop| puts stop}
puts "What stop would you like to get on at?"
embark = gets.chomp
first = nline.index{embark}

puts "what stop would you like to get off at?"
disembark = gets.chomp
last = nline.index(disembark)

total = (last - first).abs
puts "This trip will take you #{total} stops."




