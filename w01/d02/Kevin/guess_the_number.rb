puts "Guess my number."
guess = gets.chomp.to_i

#This was my old Random # random = rand(11)
prng = Random.new
random = prng.rand(11)
counter = 0

while guess != random
  puts "Sorry, wrong number! Try again! "
  counter += 1
  if guess > random
    puts "*hint, its lower than that."
  else 
    puts "*hint, it's higher than that."
  end
  guess = gets.chomp.to_i
end

if guess == random
  puts "Congrats, you got it champ! You guessed #{counter} wrong times."
end
