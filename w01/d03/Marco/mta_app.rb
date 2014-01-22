

puts "Please choose the subway line you will be taking on your trip."
puts "(L), (N), (S)ix or (O)ne"

subway_line1 = gets.chomp.downcase.to_sym

n = ['ts', '34th', '28th-n', '23rd-n', 'us', '8th-n']
l = ['8th', '6th', 'us', '3rd', '1st']
s = ['gc', '33rd', '28th-s', '23rd-s', 'us', 'astor']
o = ['59th', '50th', 'TS', '34th', '28th']
mta = {}
mta[:n] = n
mta[:l] = l
mta[:s] = s
mta[:o] = o

puts "Please enter your starting station on the #{subway_line1.upcase} Line."
puts mta[subway_line1].join(", ").upcase

subway_start = gets.chomp.to_s
$origin = mta[subway_line1].index(subway_start)

puts "Please choose the subway line for your destination."
puts "(L), (N), (S)ix or (O)ne"

subway_line2 = gets.chomp.downcase.to_sym

puts "Please enter your destination station on the #{subway_line2.upcase} Line."
puts mta[subway_line2].join(", ").upcase

subway_end = gets.chomp.to_s

$destination = mta[subway_line2].index(subway_end)

case 
when subway_line1 == subway_line2

  puts "You have #{($origin - $destination).abs} stops before your destination station."

when subway_line1 == :o || subway_line2 == :o

  pre_switch = ($origin - mta[subway_line1].index("ts")).abs
  post_switch = ($destination - mta[subway_line2].index("ts")).abs

  travel = (pre_switch + post_switch).abs

  if subway_line1 == :n || subway_line2 == :n

  puts "You have #{travel} stops before your destination station."

  else 

  puts "You have #{travel + 4} stops before your destination station."

  end

when subway_line2 == :n || subway_line2 == :l || subway_line2 == :s

  pre_switch = ($origin - mta[subway_line1].index("us")).abs
  post_switch = ($destination - mta[subway_line2].index("us")).abs

  travel = (pre_switch + post_switch).abs

  puts "You have #{travel} stops before your destination station."

end


