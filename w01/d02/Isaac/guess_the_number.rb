puts "guess a number from 1-10"
user_num = gets.chomp.to_i
right_answer = rand(1..10)

while user_num != right_answer
  puts "guess again!"
  if user_num < right_answer
    puts "too low"
  elsif user_num > right_answer
    puts "too high"
  end
  user_num = gets.chomp.to_i
end
puts "congrats! you are psychic"
















