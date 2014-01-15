
mta = {
:n => ["times square", "34th", "28th", "23rd", "union square", "8th"],
:l => ["8th ave", "6th ave", "union square", "3rd ave", "1st ave"],
:six => ["grand central", "33rd", "28th", "23rd", "union square", "astor place"]
}

puts "What line would you like to get on (l, n, or six)?"
first_line = gets.chomp.downcase

puts "The #{first_line} line stops at #{mta[first_line.to_sym].join(", ")}"
puts "Where would you like to get on?"
first_stop = gets.chomp.downcase

puts "What line do you want to get off of (l, n, or six)?"
last_line = gets.chomp.downcase

puts "The #{last_line} line stops at #{mta[last_line.to_sym].join(", ")}"
puts "Where would you like to get off?"
last_stop = gets.chomp.downcase

if firsts_line = last_line
stops = mta[first_line.to_sym].index(first_stop) - mta[last_line.to_sym].index(last_stop)
puts "You have travelled #{stops.abs} stops."
else
  stops = (mta[first_line.to_sym].index(first_stop) - mta[first_line.to_sym].index("union square")).abs + (mta[last_line.to_sym].index("union square") - mta[last_line.to_sym].index(last_stop).abs)
puts "You have travelled #{stops.abs} stops."
end