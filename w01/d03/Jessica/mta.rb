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
puts "Which line do you want to get off at? (n, l, 6)"
line_off = gets.chomp.to_sym
   if line_off == :n
    puts "Which stop do you want to get off at? (ts, 34th, 28th-n, 23rd-n, us)?"
    get_off_n = gets.chomp
    stops_traveled = (mta[:n].index(get_on) - mta[:n].index(get_off_n)).abs
    puts "You traveled #{stops_traveled} stops!"
  else 
    puts "Which stop do you want to get off at? (8th, 6th, us, 3rd, 1st)"
    get_off_l = gets.chomp
    stops_traveled = ((mta[:n].index(get_on) - mta[:n].index("us")).abs) + ((mta[:l].index(get_off_l) - mta[:l].index("us")).abs)
    puts "You traveled #{stops_traveled} stops!"
  end
else
  puts "end"
end


# else
#   puts "end"
# end


# puts "Which stop do you want to get off at? (ts, 34th, 28th-n, 23rd-n, us)?"
# get_off = gets.chomp
# puts "Which line do you want to get off at? (n, l)"
# line = gets.chomp.to_sym
# stops_traveled = (mta[:n].index(get_on) - mta[:n].index(get_off)).abs
# puts "You traveled #{stops_traveled} stops!"
# when :l
# puts "Which stop do you want to get on at? (8th, 6th, us, 3rd, 1st)?"
# get_on_l = gets.chomp
# "Which line do you want to get off at? (n, l)"
# line = gets.chomp.to_sym
#   if line == :n
#     puts "Which stop do you want to get off at? (ts, 34th, 28th-n, 23rd-n, us)?"
#     get_off_n = gets.chomp
#   else 
#     puts "Which stop do you want to get off at? (8th, 6th, us, 3rd, 1st)"
#     get_off_l = gets.chomp
#   end
# else
#   puts "error"
# end



# if mta[:n].index(get_on) == mta[:l].index(get_off)
#   puts "you are at union station"
# end

