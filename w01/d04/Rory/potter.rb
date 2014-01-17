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

########## Make into a big hash #########

potter_hash = char_array.map do |info| 
  {:mentions => info[0].to_i, :name => info[1], :house => info[2]} 
end

print potter_hash

########### 2 ###########
puts potter_hash.select{|position| position[:mentions] > 500}

########### 3 ###########
just_houses = Array.new

i = 0
while i < char_array.count
  just_houses.push(char_array[i][2])
  i +=1
end

puts just_houses.compact.uniq

########### 4 ###########
puts potter_hash.select{|position| !position[:name].include?(" ")}

########### 5 ###########
hufflepuffs = potter_hash.select{|position| position[:house] == "Hufflepuff"}
puts hufflepuffs.count

########### 6 ###########

slytherins = potter_hash.select{|position| position[:house] == "Slytherin"}
slytherins.map!{|x|x[:name].reverse}

gryffindors = potter_hash.select{|position| position[:house] == "Gryffindor"}
gryffindors.map!{|x|x[:name]}

ravenclaws = potter_hash.select{|position| position[:house] == "Ravenclaw"}
ravenclaws.map!{|x|x[:name]}

no_house = potter_hash.select{|position| position[:house] == nil}
no_house.map!{|x|x[:name]}

puts all_names_syltherins_reversed = slytherins + gryffindors + ravenclaws + no_house

############# 7 ###########

gryff_first_last = gryffindors.map{|name|name.split(" ")}
gryff_last_names = Array.new
gryff_first_last.each do |key, value| 
  gryff_last_names << value 
end





