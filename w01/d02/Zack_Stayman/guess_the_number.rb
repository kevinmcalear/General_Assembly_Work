puts "guess a number between 1 and 10"

guess = gets.chomp.to_i

counter = 0

prng = Random.new
to_guess = prng.rand(11)


while guess != to_guess
  counter += 1
  if guess > to_guess
  puts "You guessed too high, guess again"
end
  if guess < to_guess
  puts "You guessed too low, guess again"
end
guess = gets.chomp.to_i
end

if guess == to_guess
  counter +=1
  puts "Congratulations! You have guessed the number! It took you #{counter} tries to get the number"
end