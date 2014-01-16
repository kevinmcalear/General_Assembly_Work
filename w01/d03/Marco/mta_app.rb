

puts "Please choose the subway line you will be taking on your trip."
puts "(L), (N), or (S)ix"

subway_line1 = gets.chomp.downcase.to_sym

n = ['ts', '34th', '28th-n', '23rd-n', 'us', '8th-n']
l = ['8th', '6th', 'us', '3rd', '1st']
s = ['gc', '33rd', '28th-s', '23rd-s', 'us', 'astor']
mta = {}
mta[:n] = n
mta[:l] = l
mta[:s] = s

puts "Please enter your starting station on the #{subway_line1.upcase} Line."
puts mta[subway_line1].join(", ").upcase

subway_start = gets.chomp.to_s
$origin = mta[subway_line1].index(subway_start)

puts "Please choose the subway line for your destination."
puts "(L), (N), or (S)ix"

subway_line2 = gets.chomp.downcase.to_sym

puts "Please enter your destination station on the #{subway_line2.upcase} Line."
  puts mta[subway_line2].join(", ").upcase

subway_end = gets.chomp.to_s

case 
  when subway_line1 == subway_line2

  destination = mta[subway_line1].index(subway_end)

  puts "You have #{(origin - destination).abs} stops before your destination station."

  else subway_line2 == :n || subway_line2 == :l

  $destination = mta[subway_line2].index(subway_end)

  # puts mta[subway_line2].index(subway_end)
  # puts mta[subway_line2].index("us")

  pre_switch = ($origin - mta[subway_line1].index("us")).abs
  post_switch = ($destination - mta[subway_line2].index("us")).abs

  travel = (pre_switch + post_switch).abs - 1

  puts "You have #{travel} stops before your destination station."

end


