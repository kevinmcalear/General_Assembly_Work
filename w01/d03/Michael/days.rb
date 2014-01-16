puts "What day of the week is it?"
day = gets.chomp.downcase

case day
when day = "sunday"
	puts "Sunday always comes too late."
when day = "monday"
	puts "Monday you can fall apart"
when day = "tuesday"
	puts "Tuesday (Wednesday) break my heart"
when day = "wednesday"	
	puts "(Tuesday) Wednesday break my heart"
when day = "thursday"
	puts "Thursday doesn't even start"
when day = "friday"
	puts "Friday I'm in love"
when day = "saturday"
	puts "Saturday, wait"
end