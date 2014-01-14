random_num = rand(10)
puts "Please guess the number computer has picked"
user_ans = gets.chomp.to_i
attempt_count = 1
while user_ans != random_num
  puts "Please try again"
  if user_ans < random_num
    puts "your number is too low"
  elsif user_ans > random_num
    puts "your number is too high"
  end
  user_ans = gets.chomp.to_i
  attempt_count +=1
end
puts "You guessed it has taken you #{attempt_count} attempts"