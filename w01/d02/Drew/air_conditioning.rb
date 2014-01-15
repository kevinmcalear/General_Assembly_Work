puts "What is the current temperature?"
temp = gets.chomp.to_i
puts "Is the A/C working?"
ac_working = gets.chomp

# if ac_working == "Yes"
#   ac_working = true 
# elsif ac_working == "No"
#   ac_working = false
# else
#   puts "Please enter your answer as yes or no"
#   ac_working = gets.chomp
# end

puts "What temperature do you wish it was?"
desired = gets.chomp.to_i

if ac_working == "yes" && temp > desired
  puts "Turn on the AC. Crank it up!"
elsif !ac_working == "yes" && temperature > desired
  puts "Fix the AC, it's hot!"
else 
  puts "Fix the AC whenevs, it's cool!"
end



