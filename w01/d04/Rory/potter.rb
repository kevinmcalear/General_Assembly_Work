f = File.open("potter.csv", "r")

char = f.read

line_split = char.split("\n")

char_array = line_split.map{|line|line.split(",")}

f.close

########## 1 #############
just_names = Array.new

i = 0
while i < char_array.count
	just_names.push(char_array[i][1])
	i += 1
end

puts just_names

########## 

char_array

potter_hash = char_array.map{ |info| :mentions => info[0].to_i, :name => info[1], :house => info[2]}
