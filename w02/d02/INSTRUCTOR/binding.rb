require 'pry'

prng = Random.new
secret = prng.rand(11)

puts "Guess a number between 0 and 10"
guess = gets.chomp.to_i

while secret != guess
  binding.pry
  if secret <  guess
    puts "Too high!"
  else
    puts "Too low!"
  end
  guess = gets.chomp
  binding.pry
end

puts "Congrats! Do you want a cookie?!?!?!"