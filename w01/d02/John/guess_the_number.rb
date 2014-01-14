puts "I'm thinking of a number between 1 and 10...guess what it is:"
guess = gets.chomp.to_i
number = rand(0..10)
# puts number
count = 1

while guess != number
  print "Incorrect! "
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
