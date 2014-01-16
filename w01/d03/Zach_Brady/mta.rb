n = ['ts', '34th', '28th-n', '23rd-n', 'us', '8th-n']
l = ['8th', '6th', 'us', '3rd', '1st']
s = ['gc', '33rd', '28th-s', '23rd-s', 'us', 'ap']
mta = {}
mta[:n] = n
mta[:l] = l
mta[:s] = s

# KEEPING IT DRY, LIST OF ALL STOPS FOR EACH LINE
l_stops = "8th Ave (8th), 6th Ave (6th), Union Square (us), 3rd Ave (3rd), and 1st Ave (1st)"
n_stops = "Times Square (ts), 34th St. (34th), 28th St, (28th-n), 23rd (23rd-n), Union Square (us), 8th Street (8th-n)"
s_stops = "Grand Central (gc), 33rd (33rd), 28th (28th-s), 23rd (23rd-s), Union Square (us), and Astor Place (ap)."

# USER INDICATES POINT OF ORIGIN
puts "Welcome. "
puts "Select which line would you like to ride: (N), (L), (6)"
origin_line = gets.chomp.downcase

# CONVERT ORIGIN_LINE TO HASH AND PRESENT USER WITH STOPS
puts "Select current location: "
case origin_line
when "n"
    puts n_stops
    origin_line = mta[:n]
when "l"
    puts l_stops
    origin_line = mta[:l]
when "6"
    puts s_stops
    origin_line = mta[:s]
else
    puts "Sorry! No service from there--yet. "
end
origin = gets.chomp

# USER SELECTS DESTINATION
puts "Select which line would you like alight from: (N), (L), (6)"
destination_line = gets.chomp.downcase

# CONVERT DESTINATION_LINE TO HASH AND PRESENT USER WITH STOPS
puts "Select your destination stop: "
case destination_line
when "n"
    puts n_stops
    destination_line = mta[:n]
when "l"
    puts l_stops
    destination_line = mta[:l]
when "6"
    puts s_stops
    destination_line = mta[:s]
else
    puts "Sorry! No service to there--yet. "
end
destination = gets.chomp

# NUMBER OF STOPS COMPUTED
if origin_line == destination_line
    puts "That will be #{(origin_line.index(destination) - destination_line.index(origin)).abs} stops. " 
else
    # CALCULATE STOPS TO UNION SQUARE ON ORIGIN LINE
    stops_to_us = (origin_line.index("us") - origin_line.index(origin)).abs
    
    # CALCULATE STOPS FROM UNION SQUATE ON DESTINATION LINE
    stops_from_us = (destination_line.index(destination) - destination_line.index("us")).abs 
    
    # ADDS TOTAL NUMBER OF STOPS TOGETHER AND TELLS USER
    puts "That will be #{(stops_to_us + stops_from_us)} stops. " 
end

