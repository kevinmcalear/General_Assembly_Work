number = rand(11)
puts number

puts "I'm thinking of a number between 0 and 10. What is it?"
guess = gets.chomp.to_i
count = 1

while guess != number
	if number > guess
		puts "Try again! Guess a little higher..."
	else 
		puts "Try again! Guess a little lower..."
	end

	guess = gets.chomp.to_i
	count += 1

end


puts "You guessed it in only #{count} tries! Wow!"

