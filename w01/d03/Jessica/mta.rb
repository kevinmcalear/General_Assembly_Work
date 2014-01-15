mta = {
:n => ["ts", "34th", "28th-n", "23rd-n", "us"],
:l => ["8th", "6th", "us", "3rd", "1st"],
:s => ["gc", "33rd", "28th-s", "23rd-s", "us"]
}

# mta[:n] = n
# mta[:l] = l
# mta[:s] = s

puts "Which train do you want to get on? (n, l, s)"
line = gets.chomp.downcase.to_sym

case line
when :n
puts "Which stop do you want to get on at? (ts, 34th, 28th-n, 23rd-n, us)?"
get_on = gets.chomp
puts "Which stop do you want to get off at? (ts, 34th, 28th-n, 23rd-n, us)?"
get_off = gets.chomp
stops_traveled = (mta[:n].index(get_on) - mta[:n].index(get_off)).abs
puts "You traveled #{stops_traveled} stops!"
else
  puts "error"
end