n_line = ["times square", "34th", "28th-n", "23rd-n", "union square", "8th"]
l_line = ["8th", "6th", "union square", "3rd", "1st"]
s_line = ["grand central", "33rd", "28th-s", "23rd-s", "astor"]
#one_line = ["59th", "50th", "times square", "34th", "28th"]

mta = {}
mta[:l] = l_line
mta[:n] = n_line
mta[:six] = s_line
#mta[:one] = one_line

puts "What line do you want to get on?"
startline = gets.chomp.to_sym

case startline
  when :l
    puts l_line
  when :n
    puts n_line
  when :six
    puts s_line
  #when :one
  # puts one_line
end

puts "What stop do you want to get on?"
first_stop = gets.chomp

puts "What line do you want to get off on?"
endline = gets.chomp.to_sym

case endline
  when :l
    puts l_line
  when :n
    puts n_line
  when :six
    puts s_line
end

puts "What stop do you want to get off at?"
last_stop = gets.chomp

if startline != endline
  first = (mta[startline]).index(first_stop)
  second = (mta[startline]).index("union square")
  first_trip_count = (second - first).abs
  third = (mta[endline]).index("union square")
  fourth = (mta[endline]).index(last_stop)
  second_trip_count = (fourth - third).abs
  final = first_trip_count + second_trip_count
else
  first = (mta[startline]).index(first_stop)
  second = (mta[endline]).index(last_stop)
  final = (second - first).abs
end

puts "This trip will take you #{final} stops."



# puts "What line would you like to get on?"
# entryline = gets.chomp.downcase

# puts mta[entryline.to_sym]

# if entryline == "n"
#   n_list = n_line.each {|stop| puts stop}
# elsif entryline == "l"
#   l_list = l_line.each {|stop| puts stop}
# else
#   print "Not a stop"
# end

# def first_prompt(mta, entryline)
#   puts "What stop would you like to get on at?"
#   embark = gets.chomp
#   first = n_line.index(embark)

# case entryline

# when "n"
#   puts "What stop would you like to get on at?"
#   embark = gets.chomp
#   first = n_line.index(embark)

#   puts "what line would you like to get off on?"
#   disembark_line = gets.chomp
#   if disembark_line == "n"
#     puts n_line
#   else
#     puts l_line
#   end

#   if disembark_line != "n"
#     disembark = "Union Square"
#     last = n_line.index(disembark)
#     first_total = (last - first).abs
#     puts "What stop would you like to get off at?"
#     final = gets.chomp
#     last = l_line.index(final)
#     start_two = l_line.index("Union Square")
#     second_total = (last - start_two).abs
#     puts first_total + second_total
#   else
#   puts "What stop would you like to get off on?"
#   disembark = gets.chomp
#   last = n_line.index(disembark)
#   total = (last - first).abs
#   puts "This trip will take you #{total} stops."
#   end

# when "l"
#   puts "What stop would you like to get on at?"
#   embark = gets.chomp
#   first = l_line.index(embark)

#   puts "what line would you like to get off on?"
#   disembark_line = gets.chomp

#   if disembark_line != "l"
#     disembark = "Union Square"
#     last = l_line.index(disembark)
#     first_total = (last - first).abs
#     puts "What stop would you like to get off at?"
#     final = gets.chomp
#     last = n_line.index(final)
#     start_two = n_line.index("Union Square")
#     second_total = (last - start_two).abs
#     puts first_total + second_total
#   else
#   puts "What stop would you like to get off on?"
#   disembark = gets.chomp
#   last = l_line.index(disembark)
#   total = (last - first).abs
#   puts "This trip will take you #{total} stops."
#   end
# end



