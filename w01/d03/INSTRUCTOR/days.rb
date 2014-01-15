puts "Good morning! What day is it?"
puts "(M)onday (T) (W) (R) (F)"
day = gets.chomp.upcase

case day
  when "M"
    puts "Not again!"
  when "T"
    puts "At least its not Monday!"
  when "W"
    puts "Hump Day!!"
  when "R"
    puts "Thirsty"
  when "F"
    puts "TGIF!"
end