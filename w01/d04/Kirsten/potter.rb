f = File.open("potter.csv", "r")

info = f.read
second = info.split("\n")
# individual = info
# now have an array.

# def split_array_one(info)
#   i=0
#   while i < info.length
#     yield info[i]
#     i += 1
#   end
# end
# # piece is the array of arrays. 
# piece = []
# split_array_one(second) {|info| piece.push(info.split(","))}

# This is a better way:
piece = second.map {|x| x.split(",")}

potter = piece.map { |info| {:mentions => info[0].to_i, :name => info[1], :house => info[2]} }

# Print all the names
names = piece.map {|name| name[1]}
puts names

# Everything over 500 mentions
mentions_500 = potter.select{|position| position[:name] && position[:mentions] > 500}
puts mentions_500

# An array of houses
house_all = potter.map {|hash| hash[:house]}
house_all.uniq!.compact!
puts houses_all

# everyone with one name
one_name = potter.select{|hash| !hash[:name].include?" "}
puts one_name

# number of hufflepuffs
hufflepuff = potter.select{|hash| hash[:house] == "Hufflepuff"}
puts hufflepuff.count

#slytherin names reversed 
names = potter.map do |names|
  if names[:house] == "Slytherin"
    names[:name].reverse
  else
    names[:name]
  end
end

#unique gryffindor name
gryffindor_names = potter.map do |names|
  if names[:house] == "Gryffindor"
   names[:name]
end
end
gryffindor_names.compact!
unique = gryffindor_names.map { |x| x.split(" ")}
unique_gryffindor_names = unique.uniq { |x| x[1]}
puts unique_gryffindor_names.map { |x| x[1]}.compact 

#Weasley array with badger
badger = gryffindor_names.map do |names| 
  if names.include?"Weasley"
    names.gsub" "," Badger "
  end
end
badger.compact

# first name begin with y
all_names = piece.map {|name| name[1]}
y_names_split = all_names.map do |names|
  names.split" "
end
y_names = y_names_split.map do |names|
  if names[0].end_with?("y")
      names[0]
  end
end
y_names.compact

#bonus one
ll_names = all_names.map do |names|
  if names.include? "ll"
    names
  end
end
ll_names.compact!

f.close


