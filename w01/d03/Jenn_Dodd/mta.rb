mta = {:n => ['ts', '34th', '28th-n', '23rd-n', 'us', "8th-n"],
		:l => ['8th-l', '6th', 'us', '3rd', '1st'],
		:s => ['gc', '33rd', '28th-s', '23rd-s', 'us', "astor"]
	}
#mta = {}
#mta[:n] = n
#mta[:l] = l
#mta[:s] = s

n_stops = "Times Square(ts), 34th(34th), 28th(28th-n), 23rd(23rd-n), Union Square(us), 8th(8th-n)"
l_stops = "8th(8th-l), 6th(6th), Union Square(us), 3rd(3rd), 1st(1st)"
s_stops = "Grand Central(gc), 33rd(33rd), 28th(28th-s), 23rd(23rd-s), Union Square(us), Astor(astor)"

#BEGIN 

puts "Welcome to the subway!"
puts "Which line would you like to start on?"
puts "(n), 6(s), or (l)"

origin_line = gets.chomp.downcase

puts "Which stop do you want to start at?"
case origin_line 
when  "n"
	puts n_stops
when  "l"
	puts l_stops
when  "s"
	puts s_stops
end 

first_stop = gets.chomp.to_s

puts "Which line do you want to end at?"
puts "(n), 6(s), or (l)"

destination_line = gets.chomp.downcase

puts "Which stop do you want to end at?"
case destination_line 
when  "n"
	puts n_stops
when  "l"
	puts l_stops
when  "s"
	puts s_stops
end 

second_stop = gets.chomp


index_1 = mta[:n].index(first_stop)
index_2 = mta[:n].index(second_stop)

result = (index_2 - index_1).abs


puts "That will take #{result} stops."