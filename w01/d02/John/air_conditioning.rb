puts "What is the current temperature?"
temp = gets.chomp.to_i
puts "Is the A/C functional (yes or no)?"
a_c = gets.chomp
puts "What temperature do you wish it was?"
temp_desired = gets.chomp.to_i

if a_c.downcase == "yes" && temp > temp_desired
  puts "Turn on the A/C please."
elsif a_c.downcase == "no" && temp > temp_desired
  puts "Fix the A/C now! It's hot!"
elsif a_c.downcase == "no" && temp < temp_desired
  puts "Fix the A/C whenever you have the chance... It's cool..."
else
  puts "You have a working A/C unit but don't have to use it.  You're comfortable and save on electricity. Nice!"
end
