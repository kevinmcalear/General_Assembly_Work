n_line = ["ts", "34th", "28th-n", "23rd-n", "us", "8th"]
l_line = ['8th', '6th', 'us', '3rd', '1st']
s_line = ['gc', '33rd', '28th-s', '23rd-s', 'us']

mta = {}
mta[:n] = n_line
mta[:l] = l_line
mta[:s] = s_line

puts "what line do you want to start at?"
start_line = gets.chomp.to_sym


case start_line
when :l
  puts l_line
when :n
  puts n_line
when :s 
  puts s_line
end

puts "what stop do you want to get on?"
first_stop = gets.chomp

puts "what line do you want to get off at?"
end_line = gets.chomp.to_sym

case end_line
when :l
  puts l_line
when :n
  puts n_line
when :s 
  puts s_line
end

puts "what stop do you want to get off at?"
last_stop = gets.chomp 

if start_line != end_line
  first = (mta[start_line]).index(first_stop)
  second = (mta[start_line]).index("us")
  first_trip_count = (second - first).abs
  third = (mta[end_line]).index("us")
  fourth = (mta[end_line]).index(last_stop)
  second_trip_count = (fourth - third).abs
  final = first_trip_count + second_trip_count
else
  first = (mta[start_line]).index(first_stop)
  second = (mta[end_line]).index(last_stop)
  final = (second - first).abs
end

puts "This trip will take you #{final} stops!"








    
      


























# mta = {

#  }


# :n = ["ts", "34th", "28th-n", "23rd-n", "us"]
# :l = ["8th", "6th", "us", "3rd", "1st"]

# puts "what line would you like to get on?"
# entryline = gets.chomp.downcase

# define first_prompt(mta, entryline)
#     puts "What stop would you like to get on at?"
#   embark = gets.chomp
#   first = entryline_line.index(embark)
# end

# puts "What line would you like to get on?"
# entryline = gets.chomp.downcase
# if entryline == "n"
#   n_list = nline.each {|stop| puts stop}
# elsif entryline == "l"
#   l_list = lline.each {|stop| puts stop}
# else 
#   puts "Not a stop!"
# end

# case entryline

# when "n"
#   puts "What stop would you like to get on at?"
#   embark = gets.chomp
#   first = nline.index(embark)

#   puts "what line would you like to get off on?"
#   disembark_line = gets.chomp
#   if disembark_line == "n"
#     puts nline
#   else
#     puts lline
#   end

#   if disembark_line != "n"
#     disembark = "us"
#     last = nline.index(disembark)
#     first_total =(last - first).abs
#     puts "What stop do you want to get off the l?"
#     final = gets.chomp
#     last = lline.index(final)
#     start_two = lline.index("us")
#     second_total = (last - start_two).abs
#     puts "this trip will take you #{first_total + second_total} stops"



#   else
#   puts "what stop would you like to get off at?"
#   disembark = gets.chomp 
#   last = nline.index(disembark) 
#   total =(last - first).abs
#   puts "This trip will take you #{total} stops."

# end

#   last = nline.index(disembark)

# when "l"
#   puts "What stop would you like to get on at?"
#   embark = gets.chomp
#   first = lline.index(embark)

#   puts "what line would you like to get off on?"
#   disembark_line = gets.chomp
  
#   if disembark_line != "l"
#     disembark = "us"
#     last = lline.index(disembark)
#     first_total =(last - first).abs
#     puts "What stop do you want to get off the n?"
#     final = gets.chomp
#     last = nline.index(final)
#     start_two = lline.index("us")
#     second_total = (last - start_two).abs
#     puts "this trip will take you #{first_total + second_total} stops"

#   end

#   puts "what stop would you like to get off at?"
#   disembark = gets.chomp
#   last = lline.index(disembark)
# end

#   # total = (last - first).abs
#   # puts "This trip will take you #{total} stops."


