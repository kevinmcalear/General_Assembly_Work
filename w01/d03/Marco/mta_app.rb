n = ['ts', '34th', '28th-n', '23rd-n', 'us', '8th-n']
l = ['8th', '6th', 'us', '3rd', '1st']
s = ['gc', '33rd', '28th-s', '23rd-s', 'us', 'a']
mta = {}
mta[:n] = n
mta[:l] = l
mta[:s] = s

puts "Please choose the subway line you will be taking on your trip."

subway_line = gets.chomp.downcase

puts "Please enter your starting station."
#puts "The stations on the #{subway_line.upcase} are: " 
#puts subway_line.each do |line, station| 
# puts station
# end
puts "Stations: 'ts', '34th', '28th-n', '23rd-n', 'us', '8th-n'"

subway_start = gets.chomp.to_s

puts "Please enter your destination station."

subway_end = gets.chomp.to_s

origin = n.index(subway_start)




destination = n.index(subway_end)



puts "You have #{(origin - destination).abs} stops before your destination station."





