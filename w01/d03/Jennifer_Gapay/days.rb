puts "What day is it? (m)onday, (t)uesday, (w)ednesday, (th)ursday or (f)riday?"
day = gets.chomp

case day
when "m"
	puts "Welcome to Monday Blues.  Grab a Joe!"

when "t"
	puts "Welcome to Tuesday!"
when "w"
	puts "Welcome to Hump day!  Almost there!"
when "th"
	puts "Welcome to Thursday!"
when "f"
	puts "TGIF!  Have a good weekend!"
end

