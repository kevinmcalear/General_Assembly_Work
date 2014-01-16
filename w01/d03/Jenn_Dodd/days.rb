puts "Good morning! What day is it?"
puts "(M)onday, (T)uesday, (W)ednesday, Thu(R)sday, (F)riday"
day = gets.chomp.upcase

case day
when "M"
	puts "Ugh. Not again."
when  "T"
	puts "At least it's not Monday, amiright?!"
when "W"
	puts "Hump DAYYYYY!"
when "R"
	puts "Thirsty?"
when "F"
	puts "You made it! Get ready for the weekend!"
end
