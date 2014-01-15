puts "What is your name?"

name = gets.chomp

puts "How old are you?"

age = gets.chomp
age = age.to_i
compared_age = 75 - age

puts "Hi, #{name} who is #{age} years old!"

puts "You will be 75 years old in #{compared_age} years."

puts "It is #{name == "Engelbert Humperdinck"} that your name is Engelbert Humperdinck."

puts "Goodbye!"
