picked = rand(0..10)
puts "guess a number from 1-10"
user_num = gets.chomp.to_i
counter = 1

while user_num != picked
	if user_num > picked
		puts "you guessed too high, try again!"
	else
		puts "you guessed too low, try again!"
	end
	user_num = gets.chomp.to_i
	counter += 1
end
puts "congrats, you guessed #{picked} right with #{counter} tries!"