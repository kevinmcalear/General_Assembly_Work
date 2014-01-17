#1. Return an array with just the names of
#all the characters

def character_list(csv_file)
f = File.new(csv_file,"r")
array = []
f.each_line do |line|
	line_array = line.split(",")
	array << line_array[1].chomp
end
f.close
array
end

#puts character_list("potter.csv")

#Return an array with all the characters with more than 500 mentions. Each entry in the array should contain all the info

def major_characters(csv_file)
f = File.new(csv_file,"r")
array = []

f.each_line do |line|
	line.chomp!
	line_array = line.split(",")
	if line_array[0].to_i > 500
		hash = {:mentions=> line_array[0],
				:name=>line_array[1],
				:house=>line_array[2]}
		array << hash
	end
end
f.close
array
end

#puts major_characters("potter.csv")

# Return an array with the names of all the houses. `["Gryffindor", "Slytherin", "Ravenclaw", "Hufflepuff"]`
def houses(csv_file)
f = File.new(csv_file,"r")
array = []

	f.each_line do |line|
		line.chomp!
		line_array = line.split(",")
		if (!(array.include?(line_array[2])))
			array << line_array[2]
		end
	end
array.compact
end
#puts houses("potter.csv")

# Return an array with all the characters with one 
def one_word_char(csv_file)
	f = File.new(csv_file,"r")
	array = []

	f.each_line do |line|
		line.chomp!
		line_array = line.split(",")
			if line_array[1].split.size == 1
				hash = {:mentions=> line_array[0],
						:name=>line_array[1],
						:house=>line_array[2]}
				array << hash
			end
	end
	f.close
	array
end

#puts one_word_char("potter.csv")

# Return the number of characters from Hufflepuff (Hint: It should be 3)

def huff(csv_file)
f = File.new(csv_file,"r")
array = []
counter = 0
	f.each_line do |line|
		line.chomp!
		line_array = line.split(",")
		if line_array[2] == "Hufflepuff"
			counter += 1
		end
	end
	counter
end

#puts huff("potter.csv")

# Return an array with all of the character names, but for the characters from Slytherin, reverse their names (ie "Draco Malfoy" becomes "yoflaM ocarD")

def back_sly(csv_file)
f = File.new(csv_file,"r")
array = []
	f.each_line do |line|
		line.chomp!
		line_array = line.split(",")
		if line_array[2] == "Slytherin"
			line_array[1].reverse!
		end
		array << line_array[1]
	end
array
end
#puts back_sly("potter.csv")

#Return an array with the unique last names of all the characters from Gryffindor (ie, print Weasley only 1 one time)
def unique_last(csv_file)
f = File.new(csv_file,"r")
array = []
	f.each_line do |line|
		line.chomp!
		line_array = line.split(",")
		if (line_array[2] == "Gryffindor"  && !(array.include?(line_array[1].split[1])))
			array << line_array[1].split[1]
		end
	end
array.compact
end
#puts unique_last("potter.csv")

#Return an array with the names of all the Weasleys, but give each of them a middle name of "Badger"
def weasleys(csv_file)
f = File.new(csv_file,"r")
array = []
	f.each_line do |line|
		line.chomp!
		line_array = line.split(",")
		if (line_array[1].split[1] == "Weasley")
			name_array = line_array[1].split
			name_array.insert(1,"Badger")
			array << name_array.join(" ")
		end
	end
array
end

#puts weasleys("potter.csv")

#Return an array with the first names of characters whose first names end in "y"

def end_y(csv_file)
f = File.new(csv_file,"r")
array = []
	f.each_line do |line|
		line.chomp!
		line_array = line.split(",")
		if (line_array[1].split[0].end_with?("y"))
			array << line_array[1].split[0]
		end
	end
array
end
#puts end_y("potter.csv")