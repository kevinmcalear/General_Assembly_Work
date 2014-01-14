### Air Conditioning
##- This should be done in a new file called air_conditioning.rb
##- Ask the user what the current temperature is, if the A/C is functional, and what temperature they wish it was.
##- If the airconditioner is functional and the current temperature is above the the desired temperature... display "Turn on the A/C Please"
##- If the airconditioner is non-functional and the current temperature is above the the desired temperature... display "Fix the A/C now!  It's hot!"
##- If the airconditioner is non-functional and the current temperature is below the the desired temperature... display "Fix the A/C whenever you have the chance...  It's cool..."

puts "What is the current temperature?"

temperature = gets.chomp.to_i

puts "Is the A/C functional (yes or no)?"

functional = gets.chomp.downcase

puts "What temperature do you wish it was?"

temperature_wish = gets.chomp.to_i

if (functional == "yes") && (temperature > temperature_wish)
  puts "Turn on the A/C Please"
elsif (functional == "no") && (temperature > temperature_wish)
  puts "Fix the A/C now!  It's hot!"
else (functional == "no") && (temperature < temperature_wish)
  puts "Fix the A/C whenever you have the chance...  It's cool..."
end


