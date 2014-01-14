=begin
Air Conditioning
- This should be done in a new file called air_conditioning.rb
- Ask the user what the current temperature is, if the A/C is 
functional, and what temperature they wish it was.
- If the airconditioner is functional and the current temperature 
is above the the desired temperature... display "Turn on the A/C Please"
- If the airconditioner is non-functional and the current temperature is 
bove the the desired temperature... display "Fix the A/C now!  It's hot!"
- If the airconditioner is non-functional and the current temperature is 
elow the the desired temperature... display "Fix the A/C whenever you have the chance...  It's cool..."
=end


puts "Hey, what's the current temperature?"
current_temperature = gets.chomp.to_i
puts "Great. And is the A/C unit functioning properly?"
ac_functioning = gets.chomp

if ac_functioning == "yes"
	ac_functioning = true 
elsif
	ac_functioning == "no"
	ac_functioning = false
else
	puts "Please enter your answer as yes or no."
	ac_functioning = gets.chomp
end

puts "What temperature do you wish it was?"
desired_temperature = gets.chomp.to_i

if (ac_functioning == true) && (current_temperature > desired_temperature)
	puts "Turn on the A/C Please"

elsif (ac_functioning == false) && (current_temperature > desired_temperature)
	puts "Fix the A/C now! It's hot!"
elsif (ac_functioning == false) && (current_temperature < desired_temperature)
	puts "Fix the A/C whenever you have the time!"
else
	puts "Air Conditioning is Exhausting Stuff!"
end
