n = ['ts', '34th', '28th-n', '23rd-n', 'us', '8th']
l = ['8th', '6th', 'us', '3rd', '1st']
s = ['gc', '33rd', '28th-s', '23rd-s', 'us', 'astor']
mta = {}
mta[:n] = n
mta[:l] = l
mta[:s] = s

puts "What line are you getting on? Choose N, L, or S"
initial_line = gets.chomp.downcase

if initial_line == "n"
  puts "What stop are you getting on at? Choose:"
  n.each_with_index { |stop, idx| puts idx.to_s + " " +  stop }
  initial_stop = gets.chomp.to_i
  puts "What stop are you getting off at? Choose:"
  n.each_with_index { |stop, idx| puts idx.to_s + " " +  stop }
  end_stop = gets.chomp.to_i
  stops_number = end_stop - initial_stop
  puts "Get off in #{ stops_number.abs } stops "


end
