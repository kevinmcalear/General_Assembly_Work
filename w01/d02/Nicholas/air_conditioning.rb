puts "What is the current temperature?"
temp = gets.chomp.to_i
puts "Is your A/C working? (yes or no):"
working = gets.chomp
puts "What temp would you like it to be?"
desired = gets.chomp.to_i

if working == "yes" && temp > desired
  puts "Turn on the A/C please"
elsif working == "no" && temp > desired
  puts "Fix the A/C now! It's hot! HURRY!"
elsif working == "no" && temp < desired
  puts "Fix the A/C whenever you have the chance... It's cool..."
else
  puts "Don't turn on the A/C"
end



