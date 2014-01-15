mta = {
  :n => ["ts", "34th", "28th-n", "23rd-n", "us", "8th-n"], 
  :l => ["8th-l","6th", "us", "3rd", "1st"],
  :s => ["gc", "33rd", "28th-s", "23rd-s", "us", "astor"]
}
# puts "Where are you?"
# start = gets.chomp
# puts "Where are you going?"
# finish = gets.chomp

# start_position = n.index(start)
# finish_position = n.index(finish)
# dist = (start_position - finish_position).abs

# puts "You need to go #{dist} stops."
#########################################
def dist(line_start, stop_start, stop_finish, mta)
  x = mta[line_start].index(stop_start)
  y = mta[line_start].index(stop_finish)
  return (x - y).abs 
end

puts "What line do you want to get on?"
line_start = gets.chomp.downcase.to_sym

puts "What line do you want to get off?"
line_finish = gets.chomp.downcase.to_sym

puts "What stop are you at?"
stop_start = gets.chomp
puts "Where stop are you going to?"
stop_finish = gets.chomp

if line_start != line_finish
  to_us = dist(line_start, stop_start, "us", mta)
  from_us = dist(line_finish, "us", stop_finish, mta)
  puts (to_us + from_us)
else
  puts dist(line_start, stop_start, stop_finish, mta)
end