#OPEN CSV AND READ 

f = File.open("potter.csv", "r")

potter = f.read

f.close

#START WITH HASH

potter_lines = potter.split("\n")

#SPLITS EACH LINE AT COMMAS

potter_at_commas = []
potter_lines.each do |line| 
  potter_at_commas.push line.split(",") 
end

#CREATE HASH
potter = []
potter_at_commas.each do |e|
  a = {:mentions => e[0], :name => e[1], :school => e[2]}
  potter.push(a)
end

puts potter[0][:name]

#1. RETURN ARRAY WITH JUST NAMES

potter_names = []

potter.each do |e|
  names = e[:name]
  potter_names.push(names)
end

puts "-------VVVVVVV--- POTTER NAMES ---VVVVVV-------"

puts potter_names

#2. RETURN ARRAY WITH ALL CHARACTERS WITH MORE THAN 500 MENTIONS
#   EACH ARRAY ELEMENT SHOULD CONTAIN ALL INFO

potter_popular = potter.select {|e| e[:mentions].to_i > 500}


puts "-------VVVVVVV--- POTTER POPULAR ---VVVVVV-------"

puts potter_popular

#3. Return an array with the names of all the houses. 
#`["Gryffindor", "Slytherin", "Ravenclaw", "Hufflepuff"]`


potter_houses = potter.map {|e| e[:school] }.uniq.compact


puts "-------VVVVVVV--- POTTER HOUSES ---VVVVVV-------"
puts potter_houses


#4. Return an array with all the characters with one word names. Each entry in the array should contain all information about that character. (ie `{:mentions=>1797, :name=>"Voldemort", :house=>"Slytherin"}`)


potter_single = potter.reject {|e| e[:name].include? " " }

puts "-------VVVVVVV--- POTTER SINGLE ---VVVVVV-------"
puts potter_single

#5. Return the number of characters from Hufflepuff (Hint: It should be 3)

potter_huff = potter.select { |e| e[:school] == "Hufflepuff"} 


puts "-------VVVVVVV--- POTTER HUFFLEPUFF ---VVVVVV-------"
puts potter_huff.length


#6. Return an array with all of the character names, but for the characters from Slytherin, reverse their names (ie "Draco Malfoy" becomes "yoflaM ocarD")


potter_names = []

potter.each do |e|
  if e[:school] == "Slytherin"
    e[:name].reverse!
  end
  names = e[:name]
  potter_names.push(names)
end

puts "-------VVVVVVV--- POTTER SLYTHERIN ---VVVVVV-------"
puts potter_names

#7. Return an array with the unique last names of all the characters from Gryffindor (ie, print Weasley only 1 one time)

gryff = potter.select {|e| (e[:school]=="Gryffindor") && (e[:name].include? " ")}
    

gryff_names = []
gryff.each do |e|
  names = e[:name]
  gryff_names.push(names)
end

first_last = []
gryff_names.each do |name| 
 first_last.push name.split(" ")  
end

last_gryff = []
first_last.each do |e| 
  a = e[1]
  last_gryff.push(a)
end 

last_gryff.uniq!


puts "-------VVVVVVV--- POTTER GRYFF ---VVVVVV-------"

puts last_gryff

#8. Return an array with the names of all the Weasleys, but give each of them a middle name of "Badger"

weasley = potter.select {|e| e[:name].include? "Weasley"}

weasley_names = []
weasley.each do |e|
  names = e[:name]
  weasley_names.push(names)
end

chopped = weasley_names.map {|name| name.split(" ")}

badger = chopped.map {|first, last| "#{first} Badger #{last}"}

puts "-------VVVVVVV--- POTTER WEASLEY ---VVVVVV-------"

puts badger


#9. Return an array with the first names of characters whose first names end in "y"

char_names = []
potter.each do |e|
  names = e[:name]
  char_names.push(names)
end

chopped = char_names.map {|name| name.split(" ")}

first_name = []
chopped.each do |e| 
  a = e[0]
  first_name.push(a)
end 

y = first_name.select {|e| e[-1,1].include? "y"}


puts "-------VVVVVVV--- POTTER Ys HAVE IT ---VVVVVV-------"

puts y



puts "-------VVVVVVV--- POTTER REFACTORY ---VVVVVV-------"


potter_names = potter_at_commas.map {|e| {:mentions => e[0], :name => e[1], :school => e[2]}}






















