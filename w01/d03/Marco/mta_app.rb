

puts "Please choose the subway line you will be taking on your trip."
puts "(L), (N), or (S)ix"

subway_line = gets.chomp.downcase.to_sym

n = ['ts', '34th', '28th-n', '23rd-n', 'us', '8th-n']
l = ['8th', '6th', 'us', '3rd', '1st']
s = ['gc', '33rd', '28th-s', '23rd-s', 'us', 'astor']
mta = {}
mta[:n] = n
mta[:l] = l
mta[:s] = s

puts "Please enter your starting station on the #{subway_line.upcase} Line."
puts mta[subway_line].join(", ").upcase

subway_start = gets.chomp.to_s
origin = mta[subway_line].index(subway_start)

puts "Please enter your destination station."

subway_end = gets.chomp.to_s
destination = mta[subway_line].index(subway_end)



puts "You have #{(origin - destination).abs} stops before your destination station."





