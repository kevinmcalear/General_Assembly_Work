### Days of the week
# - This should be done in a new file called days.rb
# - The user should be asked to enter what day of the week it (for Monday - Friday)
# - Based on their answer, print an approriate reponse (ie TGIF!)

puts "What day of the week is it? (M)onday, (T)uesday, (W)ednesday, (TH)ursday or (F)riday?"
day = gets.chomp

case day
  when "M"
    puts "Sorry.  Monday's suck."
  when "T"
    puts "Tuesdays are not too bad."
  when "W"
    puts "Congrats.  You made it to Hump Day."
  when "TH"
    puts "You're on the home stretch!"
  when "F"
    puts "TGIF!"
  end
  