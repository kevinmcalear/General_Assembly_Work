
puts "What day of the week is it? (M-F)"
day = gets.chomp.downcase

case day
when "monday"
  result = "Monday sucks!"
when "tuesday"
result = "Time to grind"
when "wednesday"
  result = "Hump Day!"
when "thursday"
  result = "the home stretch!"
else "friday"
  result = "TGIF"
  end

puts result


