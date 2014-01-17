# # Book 8: Harry Potter and the Comma Separated Value

# Included is a csv file with a bunch of Harry Potter data. Each line contains the number of times a certain character was mentioned throughout the Harry Potter series, their name, and in some cases, the house they are associated with. Your job will be to slice and dice the data in a variety of ways using File I/O, Arrays & Hashes, Enumeration, and String Manipulation.

# ### To Do

# * Write a Ruby program to open the `potter.csv` file.
# * Figure out the data structure in which you want to store the information, and read in the data.

# Write methods for each of the following:

# 1. Return an array with just the names of all the characters
# 2 Return an array with all the characters with more than 500 mentions. Each entry in the array should contain all information about that character. (ie `{:mentions=>18956, :name=>"Harry Potter", :house=>"Gryffindor"}`)
# 3 Return an array with the names of all the houses. `["Gryffindor", "Slytherin", "Ravenclaw", "Hufflepuff"]`
# 4 Return an array with all the characters with one word names. Each entry in the array should contain all information about that character. (ie `{:mentions=>1797, :name=>"Voldemort", :house=>"Slytherin"}`)
# 5 Return the number of characters from Hufflepuff (Hint: It should be 3)
# 6 Return an array with all of the character names, but for the characters from Slytherin, reverse their names (ie "Draco Malfoy" becomes "yoflaM ocarD")
# 7 Return an array with the unique last names of all the characters from Gryffindor (ie, print Weasley only 1 one time)
# 8 Return an array with the names of all the Weasleys, but give each of them a middle name of "Badger"
# 9 Return an array with the first names of characters whose first names end in "y"

# ### Bonus

# * Return an array with all of the characters' names whose name contains "ll" somewhere
# * Return an array with all of the characters' names whose name contains multiple k's
# * Return an array with all of the characters whose first name begins with the same letter as their last name, sorted alphabetically (ie "Bathilda Bagshot". Note: "Nearly Headless Nick" counts here!)

# ### Tips:
# * Try to minimize your use of ".each". In most of these cases, there will be another enumerable method that will be a better tool for the job!
# * Ruby Docs for Array, String, and Enumerable are your friend!


f = File.new("potter.csv", "r") 
char = f.read


line_split = char.split("\n")

new_array= line_split.map {|character| character.split(",") }
my_hash = new_array.map {|character| {:mentions => character[0].to_i, :name => character[1], :house =>character[2] }}

#

f.close

#********** #1 *************
char_name = new_array.map {|name| name[1]}


#********** #2 *************
mentions = my_hash.select {|num| num[:mentions] > 500}


#********** #3 *************
houses = my_hash.map {|house| house[:house]}
houses.uniq!.compact!

#********** #4 *************
names = my_hash.select {|name| !name[:name].include?(" ")}

#********** #5 *************
huff = my_hash.select {|name| name[:house] == ("Hufflepuff")}
huff2 = huff.count

#********** #6 *************
all_names = my_hash.map do |names| 
  if names[:house] == "Slytherin" 
    names[:name].reverse
  else
    names[:name]
end
end

#********** #7 *************
last_names = my_hash.map do |names| 
  if names[:house] == "Gryffindor" 
    names[:name]
end
end
last_names2 = last_names.uniq!.compact!
last_names3 = last_names2.map{|name| name.split(" ")}
last_names4 = last_names3.map {|lname| lname[1]}
last_names5 = last_names4.uniq!.compact!

#********** #8 *************

# wea = new_array.map {|name| name[1]}
# wea2 = wea.map{|name| name.split(" ")}
# wea3 = wea2.map{|name| name[1]}
# wea4 = wea3.select do |names|
#                   if names == "Weasley"
#                     names
#                   end
#                 end

# puts wea4














