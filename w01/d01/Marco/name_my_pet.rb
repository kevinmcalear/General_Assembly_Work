puts "What kind of pet do you have?"

animal_type = gets.chomp.downcase

puts "How old is it?"

age = gets.chomp

puts "What is your #{animal_type}'s name?"

animal_name = gets.chomp.downcase

puts "#{animal_name.capitalize!} the #{animal_type} is #{age} year(s) old"

