x = rand(11)
y = 1
puts "Guess a number between 0 and 10"
guess = gets.chomp.to_i

while guess != x
	if guess < x
		puts "No, your guess is too low"
	elsif guess > x
		puts "No, your guess is too high"
	end
	puts "Guess again"
	guess = gets.chomp.to_i
	y += 1
end

puts "Congrats, that's right.  It took you #{y} tries."