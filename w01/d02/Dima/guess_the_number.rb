random_num = rand(11)
puts "Please guess the number computer has picked btw 0 and 10"
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
  random_num = rand(11)
  attempt_count +=1
end
puts "You guessed it has taken you #{attempt_count} attempts"