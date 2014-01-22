number = (rand * 11).ceil
i = 0

puts "Guess a number between 0 and 10!"
guess = gets.chomp.to_i

while guess != number
  if guess > number
    puts "Too high!"
  else
    puts "Too low!"
  end
  puts "Guess again."
  guess = gets.chomp.to_i
  i += 1
end

puts "Kudos! You got it. "
puts "It took you #{i} tries to figure that one out."