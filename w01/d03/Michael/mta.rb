ls mta =
{
:n=>['ts','34th','28th-n','23rd-n','us'],  
:l=>['8th','6th','us','3rd','1st'],
:s=>['gc','33rd','28th-s','23rd-s','us'],
}

puts "What station would you like to start at?  Select one of the stations #{mta[:n]}"
station_start = gets.chomp.downcase
station_start_index = mta[:n].index station_start


puts "What station would you like to end at?  Select one of the stations #{mta[:n]}"
station_end = gets.chomp.downcase
station_end_index = mta[:n].index station_end

distance = (station_start_index - station_end_index).abs

puts "You will travel #{distance} stops to go from #{station_start} to #{station_end}"
