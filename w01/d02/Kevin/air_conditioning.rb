puts "What is the temperature?"
temp = gets.chomp.to_i
puts "Is the A/C working? say \"yes\" or \"no\""
ac_functional = gets.chomp
puts "What is the desired temp?"
desired_temp = gets.chomp.to_i

if ac_functional == "yes" && temp > desired_temp
  puts "Turn on the A/C Please"
elsif ac_functional == "no" && temp < desired_temp
  puts "Fix the A/C whenever you get a chance... It's cool..."
elsif ac_functional == "no" && temp > desired_temp
  puts "Fix the A/C now! It's hot!"
else 
  puts "The temp is good to go!"
end
    