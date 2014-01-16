puts "Enter what day of the week it is (Monday - Friday)."
day = gets.chomp
case day
	when "Monday"
		puts "Sorry :("
	when "Tuesday"
		puts "At least it's not Monday"
	when "Wednesday"
		puts "Half-way there"
	when "Thursday"
		puts "Pre-Friday"
	else
		puts "TGIF!"
end

