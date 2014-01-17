lines = []

File.open("potter.csv", "r") do |f|
  f.each_line do |line|
    lines << line.split(",")
  end
end

collection = []

lines.each do |line|
  collection << [ mentioned: line[0], name: line[1], house: line[2]  ]
end

character_names =  lines.map { |e| e[1] }

#puts the names of all the characters
puts character_names



characters_lotsa_mentions = []

collection.each do |e|
characters_lotsa_mentions << e if ( e[0][:mentioned].to_i > 500 )
end

puts characters_lotsa_mentions


array_with_names_of_houses = ["Gryffindor", "Slytherin", "Hufflepuff", "Ravenclaw"]

#puts array with names of houses
puts array_with_names_of_houses

one_word_names = []
collection.each do |e|
one_word_names << e unless e[0][:name].include?(" ") 
end

#puts one word names
 puts one_word_names






hufflepuff_characters = []

collection.each do |e|
  hufflepuff_characters << e if e[0][:house] == "Hufflepuff\n"
end

#puts hufflepuff characters number
puts hufflepuff_characters.count






slytherin = []

collection.each do |e|
  slytherin << e if e[0][:house] == "Slytherin\n"
end

slytherin_reversed = slytherin.map { |e| e[0][:name].reverse }

#puts slytherin names reversed
puts slytherin_reversed




gryffindor = []

collection.each do |e|
  gryffindor << e if e[0][:house] == "Gryffindor\n"
end

gryffindor_names = gryffindor.map { |e| e[0][:name] }

gryffindor_surnames = []
gryffindor_names.each do |name| 
  gryffindor_surnames << name.split(" ")[1] unless gryffindor_surnames.include?(name.split(" ")[1])
end

# puts gryffindor surnames
puts gryffindor_surnames


weasleys = []
gryffindor_names.each do |name| 
  weasleys << name.split(" ").join(" Badger ") if name.to_s.split(" ").include?("Weasley")
end

#put badgers on the weasleys
puts weasleys



names_with_y = []
collection.each do |e|
names_with_y<< e if e[0][:name].split("")[-1].include?("y") 
end

#names that end with y
puts names_with_y













