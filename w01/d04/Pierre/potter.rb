def get_ordered_characters(csv_line_data)
  characters = []
  csv_line_data.each do |line|
    temp = line.split(',')
    characters.push(temp[1].chomp)
  end
  return characters
end

def get_ordered_mentions(csv_line_data)
  mentions = []
  csv_line_data.each do |line|
    temp = line.split(',')
    mentions.push(temp[0].to_i)
  end
  return mentions
end

def get_ordered_houses(csv_line_data)
  houses = []
  csv_line_data.each do |line|
    temp = line.split(',')
    houses.push("#{temp[2]}".chomp)
  end
  return houses
end

def character_database(csv_line_data)
  dataset = {}
  characters = get_ordered_characters(csv_line_data)
  mentions = get_ordered_mentions(csv_line_data)
  houses = get_ordered_houses(csv_line_data)

  for i in 0...characters.size
    dataset[characters[i].to_sym] = {:mentions => mentions[i], :house => houses[i]}
  end
  return dataset
end

#Read in file
csv = File.new("potter.csv", "r")
file_lines = IO.readlines(csv)
csv.close


# Return an array with just the names of all the characters
puts "1. #{get_ordered_characters(file_lines)}"
puts

# Return an array with all the characters with more than 500 mentions. Each entry in the array should contain all information about that character. (ie {:mentions=>18956, :name=>"Harry Potter", :house=>"Gryffindor"})
def get_popular_characters(csv_line_data)
  dataset = character_database(csv_line_data)
  return dataset.select{ |character, data| data[:mentions] > 500 }
end

puts "2. #{get_popular_characters(file_lines)}"
puts

# Return an array with the names of all the houses. ["Gryffindor", "Slytherin", "Ravenclaw", "Hufflepuff"]
def get_house_list(csv_line_data)
  houses = get_ordered_houses(csv_line_data).uniq
  houses.delete("")
  return houses
end

puts "3. #{get_house_list(file_lines)}"
puts

# Return an array with all the characters with one word names. Each entry in the array should contain all information about that character. (ie {:mentions=>1797, :name=>"Voldemort", :house=>"Slytherin"})
def get_characters_no_family(csv_line_data)
  dataset = character_database(csv_line_data)
  return dataset.reject{ |character, data| character.to_s.include?(" ") }
end

puts "4. #{get_characters_no_family(file_lines)}"
puts

# Return the number of characters from Hufflepuff (Hint: It should be 3)
def count_house_members(house_name, csv_line_data)
  dataset = character_database(csv_line_data)
  return dataset.select{ |character, data| ("#{data[:house]}".chomp) == house_name }.size
end

puts "5. Characters in Hufflepuff: #{count_house_members("Hufflepuff", file_lines)}"
puts

# Return an array with all of the character names, but for the characters from Slytherin, reverse their names (ie "Draco Malfoy" becomes "yoflaM ocarD")
def get_snaked_names(csv_line_data)
  characters = []
  for i in 0...csv_line_data.size
    temp = csv_line_data[i].split(',')
    if ("#{temp[2]}".chomp == "Slytherin") 
      characters.push(temp[1].chomp.reverse)
    else
      characters.push(temp[1].chomp)
    end
  end
  return characters
end

puts "6. Snaked Names: #{get_snaked_names(file_lines)}"
puts

# Return an array with the unique last names of all the characters from Gryffindor (ie, print Weasley only 1 one time)
def get_house_families(house, csv_line_data)
  dataset = character_database(csv_line_data).select{ |character, data| ("#{data[:house]}".chomp) == house}
  house_families = []
  dataset.each_key do | name |
    if name.to_s.include?(" ")
      house_families.push(name.to_s.split[1])
    end
  end
  return house_families.uniq
end

puts "7. Gryffindor Families: #{get_house_families("Gryffindor", file_lines)}"
puts

# Return an array with the names of all the Weasleys, but give each of them a middle name of "Badger"
def get_family_badger(family_name, csv_line_data)
  family = get_ordered_characters(csv_line_data)
  family = family.select{ |name| (name.include?(" ")) && (name.split[1] == family_name)}
  for i in 0...family.size
    family[i] = family[i].split
    last_name = family[i].pop()
    family[i].push("Badger")
    family[i].push(last_name)
    family[i] = family[i].join(" ")
  end
  return family
end

puts "8. #{get_family_badger("Weasley", file_lines)}"
puts

# Return an array with the first names of characters whose first names end in "y"
def get_first_names_y(csv_line_data)
  names = get_ordered_characters(csv_line_data)
  y_names = []
  for i in 0...names.size
    first_name = names[i].split[0]
    if first_name[first_name.size - 1] == 'y'
      y_names.push(first_name)
    end
  end
  return y_names
end

puts "9. #{get_first_names_y(file_lines)}"
puts

# Bonus

# Return an array with all of the characters' names whose name contains "ll" somewhere
def get_LL_names(csv_line_data)
  names = get_ordered_characters(csv_line_data)
  names = names.select{ |name| name.include?("ll") }
  return names
end

puts "Bonus 1. #{get_LL_names(file_lines)}"
puts


# Return an array with all of the characters' names whose name contains multiple k's
def get_multi_k_names(csv_line_data)
  names = get_ordered_characters(csv_line_data)
  multi_k = []
  names.each do |name| 
    if name.match('.*k(.*k.*)+') != nil
      multi_k.push(name)
    end
  end
  return multi_k
end

puts "Bonus 2. #{get_multi_k_names(file_lines)}"
puts

# Return an array with all of the characters whose first name begins with the same letter as their last name, sorted alphabetically (ie "Bathilda Bagshot". Note: "Nearly Headless Nick" counts here!)
def get_alliteration(csv_line_data)
  names = get_ordered_characters(csv_line_data)
  alliteration = []
  names.each do |name|
    name = name.split(" ")
    if (name.size > 1) && (name[0][0] == name[name.size-1][0])
      alliteration.push(name.join(" "))
    end
  end
  alliteration = alliteration.sort
  return alliteration
end

puts "Bonus 3. #{get_alliteration(file_lines)}"