class Character
attr_accessor :name, :mentions, :house

def initialize(mentions, name, house = "")
  @mentions = mentions
  @name = name
  @house = house
end

end

def club_500(arr)
  arr.select {|char| char.mentions > 500 }
end

def houses(arr)
  house_arr = []

  arr.each do |char|
    unless house_arr.include?(char.house) || char.house == ""
      house_arr << char.house
    end
  end

  house_arr
end

def one_word_names(arr)
  arr = arr.map {|char| char.name}
  arr.select {|name| !name.include?(" ") }
end

def huff(arr)
  arr = arr.select {|char| char.house == "Hufflepuff"}
  arr.size
end

def sly_name(arr)
  arr.map {|char| char.house != "Slytherin" ? char.name : char.name.reverse}
end

def gr_names(arr)
  arr = arr.select {|char| char.house == "Gryffindor"}
  arr = arr.map {|char| char.name.split(" ").last }
  results = []
  arr.each {|name| results << name unless results.include?(name)}
  results
end

def weasleys(arr)
  arr = arr.select {|char| char.name.split(" ").last  == "Weasley"}
  arr = arr.map {|char| char.name.gsub(" ", " Badger ")}
end

def first_names_y(arr)
  arr = arr.map {|char| char.name.split(" ")[0]}
  arr = arr.select {|name| name.end_with?("y")}
end

def ll(arr)
  arr = arr.select {|char| char.name.include?("ll")}
  arr.map {|char| char.name}
end

def kks(arr)
  arr = arr.select {|char| char.name.count("k") > 1 }
  arr.map {|char| char.name}
end

def alliteration(arr)
  arr = arr.select {|char| char.name.split.first[0,1] == char.name.split.last[0,1] && char.name.split.count > 1}
  arr.map {|char| char.name}
end

f= File.open("potter.csv", "r")

txt = f.read

sort_arr = txt.split("\n")

obj_arr = []

sort_arr.each_with_index do |entry, i|
  char_arr = entry.split(",")
  mentions = char_arr[0].to_i
  name = char_arr[1]
  house = char_arr[2] || ""
  char = Character.new(mentions, name, house)
  obj_arr[i] = char
end

#club_500(obj_arr)
# houses(obj_arr)
# one_word_names(obj_arr)
# huff(obj_arr)
# sly_name(obj_arr)
# gr_names(obj_arr)
# weasleys(obj_arr)
# first_names_y(obj_arr)
# ll(obj_arr)
# kks(obj_arr)
p alliteration(obj_arr)

f.close


