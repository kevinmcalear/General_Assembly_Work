puts "Human, guess a number! Numerical only please."
guess = gets.chomp.to_i
x = 1

rando = rand(10)

while (rando != guess)
	puts "You have messed up, stupid. Guess again!"
	guess = gets.chomp.to_i
	x += 1
end

puts "Congratulations you filthy animal! You guessed correctly in #{x} tries."
