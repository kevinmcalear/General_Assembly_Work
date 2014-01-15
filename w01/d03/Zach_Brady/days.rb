puts "What day is it? "
day = gets.chomp

case day
when "Sunday"
  print "Amen." 
when "Monday"
  print "How does it feel? To treat me like you do. "
when "Tuesday"
  print "Goodbye, Ruby Tuesday"
  print "Who would hang a name on you? "
when "Wednesday"
  print "..."
  print "I can't think of any songs about Wednesday. "
when "Thursday"
  print "That lame pop-punk group with the violin right? "
when "Friday"
  print "Friiiidaay Niiiiight!"
when "Saturday"
  print "Saturday night's alright for fighting. "
else
  print "Come again? "  
end