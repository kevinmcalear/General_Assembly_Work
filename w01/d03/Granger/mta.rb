n = ['ts', '34th', '28th-n', '23rd-n', 'us', '8th']
l = ['8th', '6th', 'us', '3rd', '1st']
s = ['gc', '33rd', '28th-s', '23rd-s', 'us', 'ap']
o = ['59th', '50th', 'ts', '34th', '28th']
mta = {}
mta[:n] = n
mta[:l] = l
mta[:s] = s
mta[:o] = o
$inputs = {"1" => :o, "o" => :o, "6" => :s, "n" => :n, "l" => :l}

def input(str)
  $inputs[str.chomp.downcase]
end

puts "What line do you want to start on? n or l or 6 or 1"
start_line = input(gets)

puts "What stop do you want to get on at:"
puts mta[start_line]

start = gets.chomp.downcase

puts "What line do you want to stop on? n or l or 6 or 1"
dest_line = input(gets)

puts  "What stop do you want to get off at:"
puts mta[dest_line]

dest = gets.chomp.downcase

start_index = mta[start_line].index(start)
dest_index = mta[dest_line].index(dest)

 total_stops = 0

  if start_line == dest_line
    total_stops += (start_index - dest_index).abs
  elsif mta[start_line].include?("us") && mta[dest_line].include?("us")
    total_stops += (start_index -  mta[dest_line].index("us")).abs 
    total_stops += (dest_index -  mta[dest_line].index("us")).abs
  elsif mta[start_line].include?("ts") && mta[dest_line].include?("ts")
    total_stops += (start_index -  mta[start_line].index("ts")).abs 
    total_stops += (dest_index -  mta[dest_line].index("ts")).abs
  elsif start_line == :o
    total_stops += (start_index -  mta[start_line].index("ts")).abs
    total_stops += 4 
    total_stops += (dest_index -  mta[dest_line].index("us")).abs
  else
    total_stops += (start_index -  mta[start_line].index("us")).abs
    total_stops += 4 
    total_stops += (dest_index -  mta[dest_line].index("ts")).abs
  end

  puts total_stops


