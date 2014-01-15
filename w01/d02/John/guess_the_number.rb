puts "I'm thinking of a number between 0 and 10...guess what it is:"
guess = gets.chomp.to_i
count = 1

number = rand(0..10)

while guess != number
  if guess > number
    puts "Too high."
  else
    puts "Too low."
  end
  puts "Please guess again."
  guess = gets.chomp.to_i
  count += 1
end

puts "Congrats! You guessed it! It took you #{count} guesses."
