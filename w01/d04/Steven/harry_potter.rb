f=File.open("potter.csv","r")
  
  potter_string = f.read

  line_split = potter_string.split("\n")
  
  comma_array = line_split.map {|character| character.split(",")}
  my_array_everything = comma_array.map {|character| {:mentions => character[0].to_i, :name => character[1], :house => character[2]}}


#print out all the names
my_array_everything.each{|item| puts item[:name]}

# for item in my_array_everything do
#   puts item[:name]
# end


#>500 mentions
my_array_everything.select{|position| position[:name] && position[:mentions] > 500}


#Print names of the houses
houses = my_array_everything.map {|item|item[:house]}
houses.uniq!.compact!
# puts houses

#one word names
one_word_names = my_array_everything.select{|item| !item[:name].include?" "}
#puts one_word_names

#hufflepuff
hufflepuff = my_array_everything.select{|item| item[:house] == "Hufflepuff"}
#puts hufflepuff.length

#Slytherin

#my_array_everything.each{|item| puts item[:name]} 
#slytherin_houses = my_array_everything.select{|item| item[:house] == "Slytherin"}
#slytherin_names = slytherin_houses.each{|item| puts item[:name]}

slytherin_names = my_array_everything.map do |hash|
if hash[:house] == "Slytherin"
   hash[:name].reverse
else hash[:name]
 end
end

#puts slytherin_names

#slytherin_names = my_array_everything.map{|item| puts item[:name] if [:house] == "Slytherin"}
#puts slytherin_names

#my_array_everything.each{|item| puts item[:name]}






f.close
