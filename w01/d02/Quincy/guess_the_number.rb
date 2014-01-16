prng = Random.new
secret = prng.rand(11)

puts "Guess a number between 0 and 10?"
guess = gets.chomp.to_i

secret == guess

while secret != guess
  puts  "Please enter another number"
  guess = gets.chomp.to_i
end

puts "Congrats. Do you want a cookie?!?!?!?!?!"
