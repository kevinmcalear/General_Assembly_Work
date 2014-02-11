subway_lines = {
	:N => ["Times Square", "34th-N", "28th-N", "23rd-N", "Union Square", "8th-N"], 
	:L => ["8th-L", "6th", "Union Square", "3rd", "1st"], 
	:SIX => ["Grand Central", "33rd", "28th-6", "23rd-6", "Union Square", "Astor Place"]
}


first_train = :N
starting_station = "Times Square"

final_train = :N
final_station = "23rd-N"



location_of_first_station = subway_lines[first_train].index(starting_station)
location_of_final_station = subway_lines[final_train].index(final_station)

puts location_of_final_station
puts location_of_first_station