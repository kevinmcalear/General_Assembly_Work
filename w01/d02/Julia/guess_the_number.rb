=begin
#Guess the number

###Prompt:
- Create a ruby file `guess_the_number.rb`
- You are to generate a basic "guess my number" game.  
The computer will pick a random number between 0 and 10.  
The user will guess the number until they guess correctly.

###Specification:
- The user should be asked to guess a number
- If the user's guess is correct, the user should see a congratulatory 
message
- If the user's guess is not correct, the user should be asked to guess 
he number again.
- This should be done in a new file called guess_the_number.rb

###Bonuses
- When the user guesses incorrectly, tell them whether they guess 
too high or too low
- When the user guesses the number correctly, tell them how many 
guesses it took them.
=end

puts "Welcome to Guess the Number! I'm thinking of a number between 1-10. \n 
Let's start by having you guess a number between 1-10."

computer_number = Random.new.rand(1..10)
guess = gets.chomp.to_i
attempt = 1

while guess != computer_number
	if guess > computer_number
	puts "Oops! Not quite, your guess is too high! What's your next guess?"
	attempt = attempt + 1
else
	puts "Oops! Not quite, your guess is too low! What's your next guess?"
	attempt = attempt + 1
end
	guess = gets.chomp.to_i
end

puts "Congrats! You got it. The computer was thinking of #{computer_number}."
puts "You got the right answer in #{attempt} guesses." 



