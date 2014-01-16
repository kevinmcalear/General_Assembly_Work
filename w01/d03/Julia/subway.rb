#define your lines & stops
subway_lines = {
	:N => ["Times Square", "34th-N", "28th-N", "23rd-N", "Union Square", "8th-N"], 
	:L => ["8th-L", "6th", "Union Square", "3rd", "1st"], 
	:SIX => ["Grand Central", "33rd", "28th-6", "23rd-6", "Union Square", "Astor Place"]
}

#define a menu to print some stops
def stop_menu(subway_lines, train)
	return subway_lines[train]
end

#Ask the user for some inputs
puts "What train would you like to get on? 'N', 'L', or 'SIX'?"
first_train = gets.chomp.upcase.to_sym

puts "Which of these stops are you starting your trip from? \n"
puts stop_menu(subway_lines, first_train)
starting_station = gets.chomp

puts "Which train do you want to get off on? 'N', 'L', or 'SIX'"
final_train = gets.chomp.upcase.to_sym

puts "Which of these stops would you like to end your trip? \n"
puts stop_menu(subway_lines, final_train)
final_station = gets.chomp

#locations of first & final stations (index)
location_of_first_station = subway_lines[first_train].index(starting_station)
location_of_final_station = subway_lines[final_train].index(final_station)

#location of union square in relation to the first/final train
union_square_address_related_to_first_station = subway_lines[first_train].index("Union Square")
union_square_address_related_to_final_station = subway_lines[final_train].index("Union Square")

#number of stops from first/last station to union square
stops_from_first_to_union_square = location_of_first_station - union_square_address_related_to_first_station

stops_from_final_to_union_square = location_of_final_station - union_square_address_related_to_final_station

#length of first/second leg
first_leg = (location_of_first_station - union_square_address_related_to_first_station).abs
second_leg = (location_of_final_station - union_square_address_related_to_final_station).abs

if first_train == final_train 
	number_of_stops = location_of_first_station - location_of_final_station
	if number_of_stops < 0
		number_of_stops.abs
	end
	puts "Your trip will be #{number_of_stops} stops!"
else 
	number_of_stops = first_leg + second_leg	
	puts "Your trip will be #{number_of_stops} stops!"
end