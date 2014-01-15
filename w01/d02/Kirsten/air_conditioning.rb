puts "What is the current temperature?"
temp = gets.chomp.to_i
puts "Is the air conditioning working? (yes/no)."
working = gets.chomp.downcase
puts "What temperature do you wish it was?"
wish = gets.chomp.to_i

if working == "yes" && temp > wish
  puts "Turn on the A/C please!"
elsif working != "yes" && temp > wish
  puts "Fix the A/C now! It's hot!"
elsif working != "yes" && temp < wish
  puts "Fix the A/C whenever you have the chance... it's cool."
else
  puts "It's fine I guess."
end