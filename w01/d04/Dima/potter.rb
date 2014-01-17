f = File.open("potter.csv", "r")
data = f.read
data_array = data.split("\n")
new_array = data_array.map {|line| line.split(",")}
 #big array of arrays
 array_of_hashes = new_array.map {|the_character| {:mentions => the_character[0],
  :name => the_character[1],
  :house => the_character[2]}} #array of hashes
def names_method(array_of_hashes)
  puts array_of_hashes.map {|position| position[:name]} #just names
end

def array_500(array_of_hashes) #all the cahrs with more than 500 mentions
  array_500 = array_of_hashes.select {|position| position[:mentions].to_i > 500} #&& position[:house] && position[:name]}
  puts array_500
end

def array_of_houses(array_of_hashes)
  puts array_of_hashes.map {|position| position[:house]}
end

def one_word_name(array_of_hashes)
  puts array_of_hashes.select {|position| !position[:name].include? " "}
end

def hufflepuff(array_of_hashes)
  hufflepuff_arr = array_of_hashes.select {|position| position[:house] == "Hufflepuff"}
  puts "The number of Hufflepuff houses is: #{hufflepuff_arr.length}"
end

def slytherin_reverse(array_of_hashes)
  slytherin_houses = array_of_hashes.select {|position| position[:house] == "Slytherin"}
  reversed_names = slytherin_houses.map {|position| position[:name].reverse}
  puts reversed_names
end

def unique_last_names
end

puts "ARRAY OF HOUSES"
array_of_houses(array_of_hashes)
puts ""
puts "NAMES"
names_method(array_of_hashes)
puts ""
puts "500 MENTIONS"
array_500(array_of_hashes)
puts ""
puts "ONE WORD NAME"
one_word_name(array_of_hashes)
puts ""
puts "Hufflepuff HOUSES AMOUNT"
hufflepuff(array_of_hashes)
puts ""
puts "NAMES FROM SLYTHERIN REVERSED"
slytherin_reverse(array_of_hashes)
f.close