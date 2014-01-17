f = File.open("potter.csv", "r")
data = f.read
f.close
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
  puts array_of_hashes.map {|position| position[:house]}.compact
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

def unique_last_names(array_of_hashes)
  puts array_of_hashes.map {|position| position[:name].split.last}.uniq.sort
end

def weasleys_plus_badger(array_of_hashes)
  last_names = array_of_hashes.map {|position| position[:name].split}
  weasley_lasts = last_names.select {|position| position[1] == "Weasley"}
  puts weasley_lasts.map {|array| array.insert(1, "Badger").join(" ")}
end

def first_names_y(array_of_hashes)
  names = array_of_hashes.map {|position| position[:name].split}
  first_names_y = names.select {|position| position[0].end_with? "y"}
  puts first_names_y.map {|array| array.join(" ")}
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
puts "HUFFLEPUFF HOUSES AMOUNT"
hufflepuff(array_of_hashes)
puts ""
puts "NAMES FROM SLYTHERIN REVERSED"
slytherin_reverse(array_of_hashes)
puts ""
puts "UNIQUE LAST NAMES"
unique_last_names(array_of_hashes)
puts ""
puts "WEASLEYS MIDDLE NAME BADGER"
weasleys_plus_badger(array_of_hashes)
puts ""
puts "FIRST NAMES WITH Y"
first_names_y(array_of_hashes)