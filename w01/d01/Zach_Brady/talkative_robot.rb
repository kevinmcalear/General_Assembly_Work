# Talkative Robot App

puts "What's your name? "
name = gets.chomp
puts "How old are you? "
age = gets.chomp.to_i
print "Hi #{name} who is #{age} years old! "
age_diff = 75 - age
print "You will be 75 in #{age_diff} years. "
print "It is #{name == "Englebert Humperdinck"} that your name is Engelbert Humperdinck. "
print "Goodbye!"