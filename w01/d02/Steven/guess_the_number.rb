#prng.rand(0..10)

prng = rand(11) 
#puts "#{prng}"

puts "Guess a number between 0 and 10"
guess = gets.chomp.to_i
while number != prng
  puts "Guess Again! "
  guess = gets.chomp.to_i
end

puts "You win!!!!"


#prng = Random.new
#secret = prng.rand(11)