trains = {
	:N => ["Times Square", "34th", "28th", "23rd", "Union Square", "8th"],
	:SIX => ["Grand Central", "33rd", "28th", "23rd", "Union Square", "Astor Place"],
	:L => ["8th Ave", "6th Ave", "Union Square", "3rd Ave", "1st Ave"]
}

puts "Which line are you getting on? Please choose either N, SIX or L."
line = gets.chomp.upcase.to_sym

puts "Which stop are you getting on at? Please choose from the following:

#{trains[line]}."
start = gets.chomp.to_s
indexer1 = trains[line].index(start)

puts "Which stop are you getting off at? Please choose from the following:

#{trains[line]}."
stop = gets.chomp.to_s
indexer2 = trains[line].index(stop)

number_stops = indexer1 - indexer2

puts "#{number_stops.abs}"

=begin if :stop == "Union Square"
=end