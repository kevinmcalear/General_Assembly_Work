puts "What day of the week is it?"
day = gets.chomp.capitalize

case day
when "Monday"
  puts "Start off right!"
when "Tuesday"
  puts "This is a tough one... Go to work!"
when "Wednesday"
  puts "Hey hey it's hump day!"
when "Thursday"
  puts "The final stretch aw yeah!"
when "Friday"
  puts "TGIF! Hey, that's a good idea for happy hour! No it isn't."
when "Saturday"
  puts "Hungover yet?"
when "Sunday"
  puts "Get some delish brunch!"
else
  puts "That's not a day, dufus."
end