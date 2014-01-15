#guess_the_number.rb 

#- You are to generate a basic "guess my number" game.  
#The computer will pick a random number between 0 and 10.  
#The user will guess the number until they guess correctly.

random_number = rand(10)
number_of_guesses = 1

puts "Guess a number between 0 and 10"
guess_number = gets.chomp.to_i

while guess_number != random_number
  puts "Wrong...Guess again..."
  if guess_number > random_number
    puts "You're number is too high o_O"
  else
    puts "You're number is too low... :/"
  end
  guess_number = gets.chomp.to_i
  number_of_guesses += 1


  if guess_number == random_number
    puts "That's correct.  You win! :D "
    puts "It took you #{number_of_guesses} guesses to finally pick the right number... Better luck next time... ;)"
  end
end