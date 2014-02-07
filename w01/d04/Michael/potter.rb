f = File.open("potter.csv","r+")

info = f.read

f.close

##Create an Array of the CSV
line_separated = info.split("\n")
array_separated = line_separated.map { |e| e.split(",") }

##Create a Hash of the characters
character_hash = array_separated.map{ |array| {:mentions => array[0].to_i, :name => array[1], :house => array[2]}}

##Create an Array of all the Character name
#(OLD) character_name = array_separated.map{ |name| name[1]}
character_name = []
character_hash.each {|hash| character_name.push(hash[:name])}

## Create an Array that has characters with over 500 mentions. 
#over_500_mentions = array_separated.select {|mentions| mentions[0].to_i > 500 && mentions[1]}
character_name_over_500_mentions = character_hash.select {|hash| hash[:mentions] > 500}

##Create an Array of unique House Names
house_name_unique = []
character_hash.each {|hash| house_name_unique.push(hash[:house])}
house_name_unique.compact!.uniq!

## Create an Array of all the characters with only one name
character_name_with_single_name = character_hash.select {|hash| !hash[:name].include? " " }

## Return the number of characters from Hufflepuff (Hint: It should be 3)
characters_name_in_hufflepuff = character_hash.select {|hash| hash[:house] == "Hufflepuff"}

characters_name_in_hufflepuff.length

##Return an array with all of the character names, but for the characters from Slytherin, reverse their names (ie "Draco Malfoy" becomes "yoflaM ocarD")

character_name_with_reverse_slytherin = []
character_hash.each {
		|hash| 
			if hash[:house] == 'Slytherin'
				character_name_with_reverse_slytherin.push(hash[:name].reverse)
		    else character_name_with_reverse_slytherin.push(hash[:name])
			end
		}
character_name_with_reverse_slytherin

#Return an array with the unique last names of all the characters from Gryffindor (ie, print Weasley only 1 one time)
character_name_with_unique_Gryffindor = []
character_hash.each {
	|hash| 
		if hash[:house] == 'Gryffindor'
			character_name_with_unique_Gryffindor.push(hash[:name].split.last)
		end
	}

character_name_with_unique_Gryffindor.uniq!


# Return an array with the names of all the Weasleys, but give each of them a middle name of "Badger"
character_name_with_weasley = 
character_hash.map {
	|name|
		if name[:name].downcase.include?("weasley")
			name[:name].gsub(" "," Badger ")
		end
	}

character_name_with_weasley.compact!

#Return an array with the first names of characters whose first names end in "y"
#maybe use map, split, first, end_with?

character_name_with_firstname_y = character_name.select { |name| name.split(" ").first.end_with?("y") }

puts character_name_with_firstname_y

#character_name_with_firstname_y = character_name_with_firstname_y.map { |name| name.split.first}


