puts "guess a number between 1 and 10"
guess = gets.chomp.to_i
counter = 0
to_guess = rand(11)


while guess != to_guess
  if guess > to_guess
  puts "You guessed too high, guess again"
  guess = gets.chomp.to_i
  counter += 1
end
  if guess < to_guess
  puts "You guessed too low, guess again"
  guess = gets.chomp.to_i
  counter += 1
end
end

if (guess == to_guess)
  counter +=1
  puts "Congratulations! You have guessed the number! It took you #{counter} tries to get the number"
end