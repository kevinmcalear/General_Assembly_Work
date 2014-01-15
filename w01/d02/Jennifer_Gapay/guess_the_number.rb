prng = Random.new
secret = prng.rand(11)

puts "Pick a number between 1-10"
guess = gets.chomp.to_i

while secret != guess
	puts "Wrong number, try again!"
	guess = gets.chomp.to_i
end

puts "You are correct!"