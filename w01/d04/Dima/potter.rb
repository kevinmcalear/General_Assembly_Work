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
  array_500 = array_of_hashes.select {|position| position[:mentions].to_i > 500 && position[:house] && position[:name]}
  puts array_500
end
names_method(array_of_hashes)
array_500(array_of_hashes)

f.close

