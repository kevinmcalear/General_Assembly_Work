puts "What's the temp home slice?"
Temp = gets.chomp.to_i
puts "Is the AC working?"


# if ac_working == "Yes"
#   # ac_working = true
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
elsif !ac_working == "yes" && temperature > desired
  puts "AC the AC"
    
    





Func = gets.chomp
puts "What temp do you wish it was?"
Wish = gets.chomp.to_i
if Func = "Yes" && Temp > Wish
  puts "Turn on the A/C please"
  elsif Func = "No" && Temp > Wish
    puts "Fix the A/C now!  It's hot!"
  elsif Func = "No" && Wish > Temp
  puts "Fix the A/C whenever you have the chance...  It's cool..."
end
    