#Read contents of file into 
f = File.new("potter.csv", "r")
  characters = Array.new
  f.each_line do |line|
    attributes = line.split(',')
    attributes = attributes.map {|a| a.tr("\n", "")}
    a = Hash.new
    a[:mentions] = attributes[0]
    a[:name] = attributes[1]
    a[:house] = attributes[2]
    characters.push(a)
  end
f.close

#Method that returns array with the names of all the characters
def names(characters)
  return characters.map {|h| h[:name]}
end

#Method that returns all information (array of hashes) about characters mentioned more than 500 times
def multiple_mentions(characters)
  return characters.select { |h| h[:mentions].to_i > 500 } 
end

#Method that returns array with the names of all houses
def houses(characters) 
  house_list = Array.new
  characters.each do |h|
    if !house_list.include?(h[:house]) && h[:house] != nil
      house_list.push(h[:house])
    end
  end
  return house_list
end

#number of characters in given residence 
def num_in_house(residence, characters)
  in_a_house = characters.select { |h| h[:house] != nil }
  in_residence = in_a_house.select { |h| h[:house] == residence}
  return in_residence.count
end

#characters with one word names
def one_word_names(characters)
  characters_w_one_word_names = characters.select{ |h| !h[:name].include?(" ")}
  return characters_w_one_word_names
end 

#Gives weasleys "Badger" as middle name
def weasleys_badger(characters)
  weasleys = characters.select{ |h| h[:name].include?("Weasley")}
  weasleys_list = weasleys.map {|h| h[:name].gsub(" "," Badger ")}
end 

#returns characters with first names that end in y
def first_name_y(characters)
  first_names = Array.new
  characters.each do |h|
    name = h[:name].split(" ")
    first_name_length = name[0].length
    first_name = name[0]
    if first_name[first_name_length-1] == "y"
      first_names.push(first_name)
    end 
  end
  return first_names
end

#returns array of character names, reverses names of those from Slytherin
def reverse_slytherin(characters)
  characters.each do |h|
    if h[:house] == "Slytherin"
      h[:name].reverse!
    end
  end
  return characters.map{ |h| h[:name]}
end 

def unique_last(residence, characters)
    last_name_list = Array.new
    characters.each do |h|
      if(h[:house] == residence)
        name = h[:name].split(" ")
        if !last_name_list.include?(name[name.length-1])
          last_name_list.push(name[name.length-1])
        end
      end
    end
    return last_name_list
end
  
## Test that code is working
puts characters
puts characters.count
puts names(characters)
puts multiple_mentions(characters)
puts houses(characters)
puts one_word_names(characters)
puts num_in_house("Hufflepuff", characters)
puts weasleys_badger(characters)
puts first_name_y(characters)
puts reverse_slytherin(characters)
puts ""
puts unique_last("Gryffindor", characters)

# ### Bonus

# * Return an array with all of the characters' names whose name contains "ll" somewhere
# * Return an array with all of the characters' names whose name contains multiple k's
# * Return an array with all of the characters whose first name begins with the same letter as their last name, sorted alphabetically (ie "Bathilda Bagshot". Note: "Nearly Headless Nick" counts here!)