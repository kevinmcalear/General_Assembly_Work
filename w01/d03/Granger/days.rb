print "What day of the week is it? "
day = gets.chomp.downcase

case day
when "sunday"
  p "Football"
when "monday"
  p "Case of the Mondays?"
when "tuesday"
  p "Ruby Tuesday"
when "wednesday"
  p "Hump day!"
when "thursday"
  p "The NBA on TNT"
when "friday"
  p "Weekend time"
when "saturday"
  p "Sleep in!"
end