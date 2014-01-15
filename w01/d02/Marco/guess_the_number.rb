puts "Guess my number (0 - 10)"

guess = gets.chomp.to_i

number = Random.new

secret = number.rand(11)

while secret != guess
  
  if guess > secret
    puts "Too high!"
  else
    puts "Too low!"
  end
  
  guess = gets.chomp.to_i

end

  puts "That's right!"