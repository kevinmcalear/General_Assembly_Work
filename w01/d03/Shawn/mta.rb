n_line_stops = ["TS", "34th", "28th", "23rd", "US", "8th"]

puts 'The N-line has the following stops:'
n_line_stops.each do |stop|
  print " #{stop} \n"
  
end

puts "What stop would you like to get on at?"
entry_point = gets.chomp
puts "... and where will you be getting off the train?"
exit_point = gets.chomp

no_of_stops = (n_line_stops.index(exit_point) - n_line_stops.index(entry_point)).abs

puts "It will take you #{no_of_stops} stops..."