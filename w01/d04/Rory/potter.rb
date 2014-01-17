############ Open file and turn into array ############
f = File.open("potter.csv", "r")

char = f.read

line_split = char.split("\n")

char_array = line_split.map{|line|line.split(",")}

f.close

########## Make into a big hash #########

potter_hash = char_array.map do |info| 
  {:mentions => info[0].to_i, :name => info[1], :house => info[2]} 
end

print potter_hash

########## 1 #############

#names = potter_hash.map{|all_three| all_three[:name]}

def names
  potter_hash.map{|all_three| all_three[:name]}
end

########### 2 ###########
#puts potter_hash.select{|position| position[:mentions] > 500}

def over_500_mentions
  potter_hash.select{|position| position[:mentions] > 500}
end

########### 3 ###########
#just_houses = potter_hash.map{|all_three| all_three[:house]}
#puts just_houses.compact.uniq

def houses
  just_houses = potter_hash.map{|all_three| all_three[:house]}
  just_houses.compact.uniq
end

########### 4 ###########
#puts potter_hash.select{|position| !position[:name].include?(" ")}

def one_word_names
  potter_hash.select{|position| !position[:name].include?(" ")}
end

########### 5 ###########
#hufflepuffs = potter_hash.select{|position| position[:house] == "Hufflepuff"}
#puts hufflepuffs.count

def hufflepuff_counter
  hufflepuffs = potter_hash.select{|position| position[:house] == "Hufflepuff"}
  hufflepuffs.count
end

########### 6 ###########

#slytherins = potter_hash.select{|position| position[:house] == "Slytherin"}
#slytherins.map!{|x|x[:name].reverse}

#gryffindors = potter_hash.select{|position| position[:house] == "Gryffindor"}
#gryffindors.map!{|x|x[:name]}

#ravenclaws = potter_hash.select{|position| position[:house] == "Ravenclaw"}
#ravenclaws.map!{|x|x[:name]}

#no_house = potter_hash.select{|position| position[:house] == nil}
#no_house.map!{|x|x[:name]}

#hufflepuffs.map!{|x|x[:name]}

#puts all_names_syltherins_reversed = slytherins + gryffindors + ravenclaws + no_house + hufflepuffs

def character_names_slytherin_rev
  slytherins = potter_hash.select{|position| position[:house] == "Slytherin"}
  slytherins.map!{|x|x[:name].reverse}

  gryffindors = potter_hash.select{|position| position[:house] == "Gryffindor"}
  gryffindors.map!{|x|x[:name]}

  ravenclaws = potter_hash.select{|position| position[:house] == "Ravenclaw"}
  ravenclaws.map!{|x|x[:name]}

  no_house = potter_hash.select{|position| position[:house] == nil}
  no_house.map!{|x|x[:name]}

  hufflepuffs = potter_hash.select{|position| position[:house] == "Hufflepuff"}
  hufflepuffs.map!{|x|x[:name]}

  all_names_syltherins_reversed = slytherins + gryffindors + ravenclaws + no_house + hufflepuffs
end



############# 7 ###########

#gryff_first_last = gryffindors.map{|name|name.split(" ")}
#gryff_last_names = Array.new
#gryff_first_last.each {|combination|gryff_last_names << combination[1]}

def unique_gryff_last_names
  gryffindors = potter_hash.select{|position| position[:house] == "Gryffindor"}
  gryffindors.map!{|x|x[:name]}
  gryff_first_last = gryffindors.map{|name|name.split(" ")}
  gryff_last_names = Array.new
  gryff_first_last.each {|combination|gryff_last_names << combination[1]}
  gryff_last_names.compact.uniq
end

############# 8 ###########
#gryff_first_last = gryffindors.map{|name|name.split(" ")}
#Weasleys = gryff_first_last.select{|combination| combination[1] == "Weasley"}
#Weasleys.map{|weas| weas.join(" Badger ")}

def weasley_middle_name_add
  gryffindors = potter_hash.select{|position| position[:house] == "Gryffindor"}
  gryffindors.map!{|x|x[:name]}
  gryff_first_last = gryffindors.map{|name|name.split(" ")}
  Weasleys = gryff_first_last.select{|combination| combination[1] == "Weasley"}
  Weasleys.map{|weas| weas.join(" Badger ")}
end


############# 9 ############
def first_names_end_with_y
  names = potter_hash.map{|all_three| all_three[:name]}
  indiv_names = names.map{|full_name|full_name.split(" ")}
  first_names = indiv_names.map{|name_as_two|name_as_two[0]}
  letters_of_first_names = first_names.map{|name|name.split(//)}
  last_letter = letters_of_first_names.map{|letters|letters[(letters.count) -1]}
end












