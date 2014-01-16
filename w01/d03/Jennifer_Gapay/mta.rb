mta = {
:n => ["ts", "34th", "28th-n", "23rd-n", "us"],
:l => ['8th', '6th', 'us', '3rd', '1st'],
:s => ['gc', '33rd', '28th-s', '23rd-s', 'us']
}

puts "Welcome to the N Train! Which stop would you like to get on?"
puts mta[:n]
sub_on = gets.chomp

puts "Which stop would you like to go to?"
puts mta [:n]
sub_off = gets.chomp

total_stops = mta[:n].index(sub_on) - mta[:n].index(sub_off) 

puts "You have #{total_stops} stops left!"



# case sub_on
# 	when "ts"