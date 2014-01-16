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

puts "Which line are you getting off from? Please choose either N, SIX or L."
line2 = gets.chomp.upcase.to_sym

puts "Which stop are you getting off at? Please choose from the following:

#{trains[line2]}."
stop = gets.chomp.to_s

indexer2 = trains[line2].index(stop)

$union_square1 = 4
$union_square2 = 4
$union_square3 = 2

if line == :N
	indexerN = indexer1 - $union_square1

	if line2 == :N
		indexerN2 = indexer2 - $union_square1
		number_stops = indexerN.abs - indexerN2
		puts "You have traveled #{number_stops.abs} stops!"
	elsif line2 == :SIX
		indexerSIX2 = indexer2 - $union_square2
		number_stops = indexerN.abs - indexerSIX2
		puts "You have traveled #{number_stops.abs} stops!"
	elsif line2 == :L
		indexerL2 = indexer2 - $union_square3
		number_stops = indexerN.abs - indexerL2
		puts "You have traveled #{number_stops.abs} stops!"
	else
		puts "You are a moron. You typed the wrong thing. Go die."
	end

elsif line == :SIX
	indexerSIX = indexer1 - $union_square2

	if line2 == :N
		indexerN2 = indexer2 - $union_square1
		number_stops = indexerSIX.abs - indexerN2
		puts "You have traveled #{number_stops.abs} stops!"
	elsif line2 == :SIX
		indexerSIX2 = indexer2 - $union_square2
		number_stops = indexerSIX.abs - indexerSIX2
		puts "You have traveled #{number_stops.abs} stops!"
	elsif line2 == :L
		indexerL2 = indexer2 - $union_square3
		number_stops = indexerSIX.abs - indexerL2
		puts "You have traveled #{number_stops.abs} stops!"
	else
		puts "You are a moron. You typed the wrong thing. Go die."
	end

elsif line == :L
	indexerL = indexer1 - $union_square3

	if line2 == :N
		indexerN2 = indexer2 - $union_square1
		number_stops = indexerL.abs - indexerN2
		puts "You have traveled #{number_stops.abs} stops!"
	elsif line2 == :SIX
		indexerSIX2 = indexer2 - $union_square2
		number_stops = indexerL.abs - indexerSIX2
		puts "You have traveled #{number_stops.abs} stops!"
	elsif line2 == :L
		indexerL2 = indexer2 - $union_square3
		number_stops = indexerL.abs - indexerL2
		puts "You have traveled #{number_stops.abs} stops!"
	else
		puts "You are a moron. You typed the wrong thing. Go die."
	end

else
	puts "You are a moron. You typed the wrong thing. Go die."
end




=begin if :stop == "Union Square"
=end