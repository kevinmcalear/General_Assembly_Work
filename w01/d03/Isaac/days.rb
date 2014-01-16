puts "What day of the week is it?"
current_day = gets.chomp.downcase
if current_day == "monday"
  puts "You have a case of the Mondays"
elsif current_day == "tuesday"
  puts "You're probably sleepy"
elsif current_day == "wednesday"
  puts "The week is half over!"
elsif current_day == "thursday"
  puts "Thirsty thursday!"
elsif current_day == "friday"
  puts "TGIF!"
end
