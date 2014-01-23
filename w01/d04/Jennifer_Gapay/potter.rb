########## Data Structure Set up ############

#Create an array to hold all of our data about all of our characters. It will be an array of hashes.
characters = []

# Open the file
file = File.new("potter.csv", "r")

# Read in each line from the file
file.each do |line|
  
  # Splitting each line by comma to get back an array with the character information for each line
  character_info = line.split(",")
  
  # Create a hash to store character info
  character = {}

  # Store the character information into our character hash
  character[:mentions] = character_info[0].to_i
  character[:name] = character_info[1].chomp
  if character_info[2]
    character[:house] = character_info[2].chomp
  end

  # Push the character on to our characters array
  characters << character

end

# Remember to close your file!
file.close

########## Question 1 ############
def all_characters(character_list)
  character_names=  character_list.map do |character|
    character[:name]
  end
  return character_names
end

puts all_characters(characters)
puts

########## Question 2 ############
def most_mentioned_characters(character_list)
   most_mentioned = character_list.select do |character|
      character[:mentions] >  500
  end
  return most_mentioned
end

puts most_mentioned_characters(characters)
puts

########## Question 3 ############
def all_houses(character_list)
  character_houses = character_list.map do |character|
    character[:house]
  end
  # .uniq returns an array with the unique items in the array 
  # .compact removes "nil"s
  return character_houses.uniq.compact
end

puts all_houses(characters)
puts

########## Question 4 ############
def hufflepuff_number(character_list)
  hufflepuff_characters = character_list.select do |character|
      character[:house] == "Hufflepuff"
  end
  return hufflepuff_characters.count
end

puts hufflepuff_number(characters)
puts

########## Question 5 ############
def backwards_slytherin(character_list)
  modified_characters = character_list.map do |character|
    if character[:house] == "Slytherin"
      character[:name].reverse
    else
      character[:name]
    end
  end
  return modified_characters
end

puts backwards_slytherin(characters)
puts

########## Question 6 ############
def gryffindor_unique_last_names(character_list)
  gryffindors = character_list.select do |character|
    character[:house] == "Gryffindor"
  end
  gryffindor_last_names = gryffindors.map do |gryffindor_character|
    gryffindor_character[:name].split.last
  end
  return gryffindor_last_names.uniq
end

puts gryffindor_unique_last_names(characters)
puts

########## Question 7 ############
def one_word_names(character_list)
  single_word_names = character_list.select do |character|
    character[:name].split.length == 1
  end
  return single_word_names
end

puts one_word_names(characters)
puts

########## Question 8 ############
def badger_weasleys(character_list)
  weasleys = character_list.select do |character|
    character[:name].split.last == "Weasley"
  end
  weasleys_with_badger =  weasleys.map do |weasley|
    weasley[:name].gsub(" ", " Badger ")
  end
  return weasleys_with_badger
end

puts badger_weasleys(characters)
puts

########## Question 9 ############
def y_names(character_list)
  y_characters =  character_list.select do |character|
    character[:name].split.first[-1] == "y"
  end
  first_names =  y_characters.map do |character|
    character[:name].split.first
  end
  return first_names
end

puts y_names(characters)
puts

########## Bonus 1 ############
def ll_names(character_list)
  characters_with_ll = character_list.select do |character|
    character[:name].include?("ll")
  end
  names = characters_with_ll.map do |character|
    character[:name]
  end
  return names
end

puts ll_names(characters)
puts

########## Bonus 2 ############
def multiple_k_names(character_list)
  characters_with_ks = character_list.select do |character|
    character[:name].downcase.count("k") > 1
  end
  names =  characters_with_ks.map do |character|
    character[:name]
  end
  return names
end

puts multiple_k_names(characters)
puts

########## Bonus 3 ############
def first_last_name_same_letter(character_list)
  double_named_characters = character_list.select do |character|
    name_array = character[:name].split
    name_array.length > 1 && name_array.first[0] == name_array.last[0] 
  end
  double_names =  double_named_characters.map do |character|
    character[:name]
  end
  return double_names.sort
end

puts first_last_name_same_letter(characters)
puts