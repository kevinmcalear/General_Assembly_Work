puts "What day of the week is it today? (Monday-Friday)"
day = gets.chomp.downcase

case day
  when "monday"
    puts "Grosss... Welcome to the week."
  when "tuesday"
    puts "Mmmmm Ruby Tuesdays..."
  when "wednesday"
    puts "HUMP DAY!!!"
  when "thursday"
    puts "One more day till Friday!"
  when "friday"
    puts "Enjoy the weekend! :)"
  else
  puts "I said pick a day between Monday and Friday! And type out the day." 
end

