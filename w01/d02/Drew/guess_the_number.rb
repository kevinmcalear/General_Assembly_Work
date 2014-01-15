prng = Random.new
secret = prng.rand(11)

puts "Guess a number!"
guess = gets.chomp.to_i

while secret != guess
  puts "Please guess another number"
  guess = gets.chomp.to_i
end

puts "Congrats! You win"


# if guess = secret
#   puts "Congratulations, you guessed my number!"
# else "Guess again"
#   guess = gets.chomp.to_i
# end

# while guess > secret
#   puts " Too high! guess again!"
#   guess = gets.chomp.to_i
# end

# while guess < secret
#   puts " Too low! guess again!"
#   guess = gets.chomp.to_i
# end


