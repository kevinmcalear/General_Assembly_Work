puts "What's your name"
name = gets.chomp

puts "How old are you?"
age = gets.chomp.to_s

#Variables
old_person = 75 - age.to_i
name_eval = name.eql?("Engelbert Humperdinck")


puts "Hi, #{name} who is #{age} years old!"
puts "You will be 75 years old in #{old_person} years"
puts "It is #{name_eval} that your name is Engelbert Humperdinck"
puts "Goodbye"

=begin
1. Create a new ruby file in your work folder
2. Ask user's name
3. Ask user's age
4. Print "Hi, name who is age years old!"
5. Print "You will be 75 years old in years years."
6. Print "It is true/false that your name is Engelbert Humperdinck."
7. Print "Goodbye!"
=end