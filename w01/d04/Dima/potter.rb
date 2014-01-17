f = File.open("potter.csv", "r")
data = f.read
data_array = data.split("\n")
new_array = data_array.map {|line| line.split(",")} #big array of arrays

names = new_array.map{|position| position[1]} #just names

array_of_hashes = new_array.map {|the_character| {:mentions => the_character[0],
  :name => the_character[1],
  :house => the_character[2]} }
  puts array_of_hashes #array of hashes

f.close

