number = rand(0..10) 
tries = 0
puts "Guess what number I am thinking of: "
response = gets.chomp.to_i

while response != number
  if response < number
    puts "Nope, too low! Nice try... Guess Again:"
    response = gets.chomp.to_i
  else
    puts "Nope, too high!! Nice try... Guess Again:"
    response = gets.chomp.to_i
  end
  tries += 1
end

puts "YAY!!! You got it!"
puts "It only took you #{tries} times to guess!"
