n = ['ts', '34th', '28th-n', '23rd-n', 'us', '8th-n']
l = ['8th', '6th', 'us', '3rd', '1st']
s = ['gc', '33rd', '28th-s', '23rd-s', 'us', 'ap']
mta = {}
mta[:n] = n
mta[:l] = l
mta[:s] = s

puts "Welcome. "
puts "Select which line would you like to ride: (N), (L), (6)"
line = gets.chomp.downcase

# User selects N

puts "Select current location: Times Square (ts), 34th St. (34th), 28th St, (28th-n), 23rd (23rd-n), Union Square (us), 8th Street (8th-n)"
origin = gets.chomp

puts "Select destination: Times Square (ts), 34th St. (34th), 28th St, (28th-n), 23rd (23rd-n), Union Square (us), 8th Street (8th-n)"
destination = gets.chomp

puts "That will be #{(n.index(destination) - n.index(origin)).abs} stops. "