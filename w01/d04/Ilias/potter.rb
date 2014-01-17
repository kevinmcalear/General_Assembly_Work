##Open File##
f = File.new("potter.csv", "r")

##Read File##
potter_file = f.read

##Close##
f.close
##Split up File by Return & Commas##
potter_array = potter_file.split("\n")

sub_array = potter_array.map{ |variable| variable.split(",") }

##Throw data entries into Hashes inside an array##

everything_array = sub_array.map do |entry|
  new_hash = {}
  new_hash[:number] = entry[0].to_i
  new_hash[:name] = entry[1]
  new_hash[:house] = entry[2]
  new_hash
end

#1
character_names = everything_array.map{ |hash| hash[:name]}
puts character_names

#2
over_500 = everything_array.select { |hash| hash[:number] > 500}
over_500.each{ |hash| puts hash[:name]}

#3
house_names = everything_array.map{ |hash| hash[:house]}
puts house_names.uniq.compact

#4
one_word_names = everything_array.reject { |hash| hash[:name].include?(" ")}
one_word_names.each{ |hash| puts hash[:name] }

#5
characters_from_hufflepuff = everything_array.select{ |hash| hash[:house] == "Hufflepuff"}
characters_from_hufflepuff.each{ |hash| puts hash[:name] }

# 6
reverse_slytherin = everything_array.map do |hash|
  if hash[:house] == "Slytherin"
    hash[:name].reverse
  else
    hash[:name]
  end
end
puts reverse_slytherin

#7



