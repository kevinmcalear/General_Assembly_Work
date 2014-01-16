f = File.open("potter.csv", "r")
data = f.read
data_array = data.split("\n")
new_array = data_array.map {|line| line.split(",")}
names = new_array.map{|position| position[1]}
puts mention_array
f.close