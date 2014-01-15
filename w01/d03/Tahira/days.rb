puts "What day of the week is it?"
day = gets.chomp.downcase

case day
when "monday"
  puts "Ugh! Back to work!"
when "tuesday"
  puts "Not as bad as Monday..."
when "wednesday"
  puts "Belly button of the week!"
when "thursday"
  puts "It's almost Friday!"
when "friday"
  puts "TGIF!"
when "saturday"
  puts "Brunch!!"
when "sunday"
  puts "Time to relax (and clean)."
end
