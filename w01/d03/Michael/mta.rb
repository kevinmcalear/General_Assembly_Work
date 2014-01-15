mta =
{
:n=>['ts','34th','28th-n','23rd-n','us'],  
:l=>['8th','6th','us','3rd','1st'],
:s=>['gc','33rd','28th-s','23rd-s','us'],
}



puts "What line would you like to get on? Select from the N or the L"
line_start = gets.chomp.downcase
line_start_sym = line_start.to_sym


puts "What station would you like to start at?  Select one of the stations #{mta[line_start_sym]}"
station_start = gets.chomp.downcase
station_start_index = mta[line_start_sym].index station_start

puts "What line would you like to get off on? Select from the N or the L"
line_end = gets.chomp.downcase
line_end_sym = line_end.to_sym

puts "What station would you like to end at?  Select one of the stations #{mta[line_end_sym]}"
station_end = gets.chomp.downcase
station_end_index = mta[line_end_sym].index station_end



if line_start == line_end 
	distance = (station_start_index - station_end_index).abs
elsif line_start == 'n'
	n_distance = (station_start_index - 4).abs
	l_distance = (station_end_index - 2).abs
	distance = n_distance + l_distance
elsif line_start == 'l'
else 
end

	

puts "You will travel #{distance} stops to go from #{station_start} to #{station_end}"
