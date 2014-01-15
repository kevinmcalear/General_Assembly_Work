rand_num = 	Random.new
rand_num =  rand(11)

puts "Guess a number between 1 and 10"
user_num = gets.chomp.to_i

while user_num != rand_num
	# if user_num > rand_num
	# 	puts "That number is too high. Please enter another number"
	# else  "That number is too low. Please enter another number"
	# end	
	user_num = gets.chomp.to_i
end  

puts "Congrats! That is the correct number!"