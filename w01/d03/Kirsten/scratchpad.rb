:one => ["59th", "50th", "times square", "34th", "28th"]

puts "What line do you want to get off of (l, n, 1, or 6)?"
last_line_in = gets.chomp
if last_line_in == "6"
  last_line_in = "six"
  last_line = last_line_in
else
  last_line = last_line_in.downcase
end



# if first_line == "n"


#   puts "The N line stops at Times Square, 34th, 28th, 23rd, Union Square, and 8th."
#   puts "What stop do you want to get on at?"
#   first_stop = gets.chomp.downcase

# elsif first_line == "l"
#   puts "The L line stops at 8th Ave, 6th Ave, Union Square, 3rd Ave, and 1st Ave."
#   puts "What stop do you want to get on at?"
#   first_stop = gets.chomp.downcase

# else
#   puts "Please choose L or N."
# end

# puts "What line do you want to get off of (l or n)?"
# last_line = gets.chomp.downcase

# if last_line == "n"
#   puts "The N line stops at Times Square, 34th, 28th, 23rd, Union Square, and 8th."
#   puts "What stop do you want to get off at?"
#   last_stop = gets.chomp.downcase
# elsif last_line == "l"
#   puts "The L line stops at 8th Ave, 6th Ave, Union Square, 3rd Ave, and 1st Ave."
#   puts "What stop do you want to get off at?"
#   last_stop = gets.chomp.downcase
# else
#   puts "Please choose L or N."
# end

# if first_line == "l" && last_line == "l"
#   stops = mta[:l_line].index(first_stop) - mta[:l_line].index(last_stop)
#   puts "You have travelled #{stops.abs + 1} stops."
# elsif first_line == "n" && last_line == "n"
#   stops = mta[:n_line].index(first_stop) - mta[:n_line].index(last_stop)
#   puts "You have travelled #{stops.abs + 1} stops."

# end
