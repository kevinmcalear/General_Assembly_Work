n = ['ts', '34th', '28th-n', '23rd-n', 'us']
l = ['8th', '6th', 'us', '3rd', '1st']
s = ['gc', '33rd', '28th-s', '23rd-s', 'us']
mta = {}
mta[:n] = n
mta[:l] = l
mta[:s] = s


puts "What line do you want to start on? n or l"
start_line = gets.chomp.downcase

"What stop do you want to get on at:"

case start_line
when "n"
    puts n
when "l" 
  puts l
end


    start = gets.chomp.downcase

puts "What line do you want to stop on? n or l"
stop_line = gets.chomp.downcase

puts  "What stop do you want to get off at:"
case stop_line
when "n"
    puts n
when "l" 
  puts l
end

stop = gets.chomp.downcase

start_index = mta[start_line.to_sym].index(start)
stop_index = mta[stop_line.to_sym].index(stop)

total_stops = 0

if start_line != stop_line
  total_stops = (start_index -  mta[start_line.to_sym].index("us")).abs 
  total_stops += (stop_index -  mta[stop_line.to_sym].index("us")).abs
else
  total_stops = (start_index - stop_index).abs
end

p total_stops


