puts "Please tell what day of the week it is today Monday - Friday"
user = gets.chomp
case user
when "monday"
  puts "no it's not guess better"
when "tuesday"
  puts "Tuesday was yesterday"
when "wednesday"
  puts "You right!"
when "thursday"
  puts "It's going to be tomorrow"
when "friday"
  puts "Friday is actually the day after tomorrow"
else
  puts "Please enter full name of the day from Monday to Friday"
end