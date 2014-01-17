f = File.open("potter.csv", "r")
characters = f.read
potter_split = characters.split("\n")
potter_array = potter_split.map{ |character| character.split(",")}

potter_hash = potter_array.map {|character| { :mentions => character[0].to_i, :name => character[1], :houses => character[2]}}

# characters_500 = potter_array.select { |position| position[1] && position[0].to_i > 500}
def method_two(potter_hash)
  puts "2nd Problem"
  puts potter_hash.select { |position| position[:name] && position[:mentions] > 500}
end

method_two(potter_hash)

def method_three(potter_hash)
  puts "3rd Problem"
  puts potter_hash.map {|position| position[:houses]}.compact
end

method_three(potter_hash)

def method_four(potter_hash)
  puts "4th Problem"
  puts potter_hash.select {|position| !position[:name].include?(" ") }
end

method_four(potter_hash)

def method_five(potter_hash)
  puts "5th Problem"
  hufflepuff = potter_hash.select {|position| position[:houses] =="Hufflepuff" } 
  puts hufflepuff.count
end

method_five(potter_hash)

def method_six(potter_hash)
  puts "6th Problem"
  slytherin = potter_hash.select {|position| position[:houses] == "Slytherin" }
  puts slytherin.map {|position| position[:name].reverse}
end

method_six(potter_hash)

def method_seven(potter_hash)
  puts "7th Problem"
  gryffindor = potter_hash.select {|position| position[:houses] == "Gryffindor" }
  unique_potter = gryffindor.map {|position| position[:name].split(" ")}
  unique_potter.uniq {|position| position[1]}
  puts unique_potter.map {|position| position[1]}.compact
end

method_seven(potter_hash)

def method_eight(potter_hash)
  puts "8th Problem"
weasley1 = potter_hash.select {|position| position[:name].include? "Weasley" }
puts weasley1.map {|position| position[:name].gsub(" ", " Badger ")}
end

method_eight(potter_hash)

def method_nine(potter_hash)
puts "9th Problem"
y = potter_hash.map {|position| position[:name].split(" ")}
split_y = y.map {|position| position[0].split("")}
split_y_1 = split_y.select {|position| position.pop == "y"}
split_y_2 = split_y_1.each {|position| position.push("y")}
puts split_y_2.map {|position| position.join}
end

method_nine(potter_hash)



f.close