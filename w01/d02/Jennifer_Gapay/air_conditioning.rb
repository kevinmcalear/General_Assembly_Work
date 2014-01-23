puts "What is the current temperature?"
temperature = gets.chomp.to_i
puts "Is the A/C working?"
ac_working = gets.chomp

if ac_working == "Yes"
	ac_working = true
elsif ac_working == "No"
	ac_working = false
else
	puts "Please enter your answer as Yes or No"
	ac_working = gets.chomp
end

puts "What is your desired temp?"
desired = gets.chomp.to_i

if ac_working && "yes" temperature > desired
	puts "Turn on the AC.  Crank it up!"
elsif !ac_working && temperature > desired
	puts "Fix the AC, it's hot!"
else
	puts "Fix the AC whenev. It's coo."
end