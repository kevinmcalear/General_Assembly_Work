#Generate computer's random number
r = Random.new
comp = r.rand(11)

tries = 0
guess = nil

#Get guess guesses and check against computer's value
while guess != comp do
	if tries >  0
		if guess > comp
			puts "You guessed too high!"
		else
			puts "You guessed too low!"
		end
		puts "Try again!"
	end
	puts "Guess a number from 0 to (and including) 10!"
	guess = gets.chomp.to_i
	tries += 1
end	

puts "Correct! It took you #{tries} attempts to get it right :)"	
