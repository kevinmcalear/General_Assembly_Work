puts "What is the current temp?"
temp = gets.chomp
puts "Is the A/C functional? (yes/no)"
func = gets.chomp
puts "What is your desired temp?"
desired = gets.chomp

if (func == "yes") && (temp > desired)
  puts "Turn on the A/C Please"
elsif (func == "no") && (temp > desired)
  puts "Fix the A/C now! It's hot!"
elsif (func == "no") && (temp < desired)
  puts "Fix the A/C whenever you have the chance... It's cool..."
else
  puts "error"
end


