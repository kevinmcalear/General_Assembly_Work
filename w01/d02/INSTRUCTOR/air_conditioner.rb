puts "What is the current temperature?"
temperature = gets.chomp.to_i
puts "Is the A/C working? (Yes/No)"
ac_working = gets.chomp.downcase

# if ac_working == "Yes"
#   ac_working = true
# elsif ac_working == "No"
#   ac_working = false
# else
#   puts "Please enter your answer as Yes or No"
#   ac_working = gets.chomp
# end

puts "What is your desired temp?"
desired = gets.chomp.to_i

if ac_working == "yes" && temperature > desired
  puts "Turn on the AC. Crank it up!"
elsif ac_working != "yes" && temperature > desired
  puts "Fix the AC its hot!"
else
  puts "Fix the AC whenevs. It's coo."
end