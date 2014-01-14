number = rand(1..10)
puts "Guess a number between 0 and 10"
guess = gets.chomp.to_i
try = 1

while guess != number
  print "Guess again!"
  if guess < number 
    puts " Higher!"
  else 
    puts " Lower!"
  end
  guess = gets.chomp.to_i
  try = try + 1
end 

puts "Congrats! It only took you #{try} tries!"