puts "What is the current temp?"
temp = gets.chomp.to_i
puts "Is the A/C functional? (yes/no)"
func = gets.chomp
puts "What is your desired temp?"
desired = gets.chomp.to_i

if (func == "yes") && (temp > desired)
  puts "Turn on the A/C Please"
elsif (func == "no") && (temp > desired)
  puts "Fix the A/C now! It's hot!"
else (func == "no") && (temp < desired)
  puts "Fix the A/C whenever you have the chance... It's cool..."
end


