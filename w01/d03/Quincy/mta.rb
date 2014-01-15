n = ['ts', '34th', '28th-n', '23rd-n', 'us', '8th']
l = ['8th', '6th', 'us', '3rd', '1st']
s = ['gc', '33rd', '28th-s', '23rd-s', 'us', 'ap']
mta = {}
mta[:n] = n
mta[:l] = l
mta[:s] = s

def stops(line, mta)
case line
  when "n"
    return mta[:n]
  when "l"
    return mta[:l]
  when "s"
    return mta[:s]
end
end

puts "What line are you taking? The N, L or 6?"
start_line = gets.chomp.downcase

start_line = "s" if start_line =="6"

puts "What stop do you want to get on at?"

puts stops(start_line, mta)

start = gets.chomp.downcase

puts "What line do you want to stop on? The N, L or 6?"
stop_line = gets.chomp.downcase

stop_line = "s" if stop_line =="6"

puts "What stop do you want to get off at?"

puts stops(stop_line, mta)

stop = gets.chomp.downcase

start_index = mta[start_line.to_sym].index(start)
stop_index = mta[stop_line.to_sym].index(stop)

total_stops = 0

if start_line != stop_line
  total_stops = (start_index - mta[start_line.to_sym].index("us")).abs
  total_stops += (stop_index - mta[stop_line.to_sym].index("us")).abs
else 
  total_stops = (start_index - stop_index).abs
end

p total_stops