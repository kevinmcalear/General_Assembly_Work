puts "Guess number btw 0-10"
number = gets.chomp.to_i
random = rand(11)
i = 0

while random != number
  puts "Guess again!"
  number = gets.chomp.to_i
  i += 1
end

puts "Congrats! It took you #{i} tries to guess the number."

