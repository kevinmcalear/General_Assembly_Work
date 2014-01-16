comp_ans = rand(1..10) 

puts "Pick a number from 1 to 10"
user_ans = gets.chomp.to_i

while user_ans != comp_ans 
  puts "Guess the number again!"
  user_ans = gets.chomp.to_i
end
  puts "Congrats"

if user_ans > comp_ans
  puts "answer is too high"
else user_ans < comp_ans 
  puts "answer is too low"
end

prng = Random.new(11)
secret = prng.rand(11)
puts "Guess a number "
guess = gets.chomp.to_i 
any guesses it took them.
