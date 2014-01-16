mta = {
:n => ["times square", "34th", "28th", "23rd", "union square", "8th"],
:l => ["8th ave", "6th ave", "union square", "3rd ave", "1st ave"],
:six => ["grand central", "33rd", "28th", "23rd", "union square", "astor place"],
}

puts "What line would you like to get on (l, n, or 6)?"
first_line_in = gets.chomp
if first_line_in == "6"
  first_line_in = "six"
  first_line = first_line_in
else
  first_line = first_line_in.downcase
end

puts "The #{first_line} line stops at #{mta[first_line.to_sym].join(", ")}"
puts "Where would you like to get on?"
first_stop = gets.chomp.downcase

puts "What line do you want to get off of (l, n, or 6)?"
last_line_in = gets.chomp
if last_line_in == "6"
  last_line_in = "six"
  last_line = last_line_in
else
  last_line = last_line_in.downcase
end

puts "The #{last_line} line stops at #{mta[last_line.to_sym].join(", ")}"
puts "Where would you like to get off?"
last_stop = gets.chomp.downcase

if first_line == last_line
  stops = mta[first_line.to_sym].index(first_stop) - mta[last_line.to_sym].index(last_stop)
  puts "You have traveled #{stops.abs} stops."
else
  stops = ((mta[first_line.to_sym].index(first_stop) - mta[first_line.to_sym].index("union square")).abs) + (mta[last_line.to_sym].index("union square") - mta[last_line.to_sym].index(last_stop).abs)
puts "You have traveled #{stops.abs} stops."
end