=begin
### Days of the week
- This should be done in a new file called days.rb
- The user should be asked to enter what day of the week it 
(for Monday - Friday)
- Based on their answer, print an approriate reponse (ie TGIF!)
=end


puts "Hi! What day is it today?"
day = gets.chomp.downcase

if day == "monday"
	puts "Somebody's got a case of the Mondays!"
elsif day == "tuesday"
	puts "Treat yo self Tuesday!"
elsif day == "wednesday"
	puts "HUMMMMPPPP DAYYYY!"
elsif day == "thursday"
	puts "Thirsty Thursday!"
elsif day == "friday"
	puts "Everybody's workin' for the weekend!"
elsif day == "saturday"
	puts "Saturday night's alright for fighting."
elsif day == "sunday"
	puts "Lazy Sunday, wake up in the late afternoon..."
else 
	puts "Please enter a valid day of the week."
	day = gets.chomp.downcase
	if day == "monday"
	puts "Somebody's got a case of the Mondays!"
elsif day == "tuesday"
	puts "Treat yo self Tuesday!"
elsif day == "wednesday"
	puts "HUMMMMPPPP DAYYYY!"
elsif day == "thursday"
	puts "Thirsty Thursday!"
elsif day == "friday"
	puts "Everybody's workin' for the weekend!"
elsif day == "saturday"
	puts "Saturday night's alright for fighting."
else
	puts "Lazy Sunday, wake up in the late afternoon..."
end
end

=begin
Another approach:

case day 
	when "monday"
		puts 
	when "tuesday"
		puts 
	etc. etc.
	end

=end

