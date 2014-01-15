number = rand(0..10)


puts "Guess a number between 0-10:"
guess = gets.chomp.to_i


counter = 1


while number != guess
  if guess < number
    puts "Your guess is too low. Please guess again."
    guess = gets.chomp.to_i
  else
    puts "Your guess is too high. Please guess again."
    guess = gets.chomp.to_i
  end
  counter = counter + 1
end


puts "You're right!!"


if counter == 1
  puts "It took you #{counter} try to guess correctly!"
else
  puts "It took you #{counter} tries to guess correctly!"
end