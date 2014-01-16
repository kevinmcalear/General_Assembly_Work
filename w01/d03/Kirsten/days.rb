puts "What day of the week is it?"
input = gets.chomp.downcase

case input
when "monday"
  puts "Monday already?"
when "tuesday"
  puts "Almost halfway to the weekend!"
when "wednesday"
  puts "Halfway there!"
when "thursday"
  puts "Almost Friday!"
when "friday"
  puts "TGIF!"
when "saturday"
  puts "Party!"
when "sunday"
  puts "Get ready for Monday!"
else
  puts "I didn't understand that."
end