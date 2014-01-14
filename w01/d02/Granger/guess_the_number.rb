answer =  rand(11)
guess = -1
counter = 0

while (guess != answer)
  print "Guess the number: "
  guess = gets.chomp.to_i

  puts "Too high" if guess > answer
  puts "Too low" if guess < answer
  counter+=1
end

puts "You were right! It took you #{counter} guesses."
