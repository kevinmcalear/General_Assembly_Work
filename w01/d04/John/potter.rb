f = File.open("potter.csv", "r")
csv = f.read
f.close


lines = csv.split("\n")

potter_array = []
lines.each do |line|
  potter_array.push line.split(",")
end

potter = []
potter_array.each do |line|
  a = {:mentions => line[0], :name => line[1], :house => line[2]}
  potter.push a
end


# 1. Return an array with just the names of all the characters

def get_names(potter)
  names_array = []
  potter.each { |elem| names_array.push(elem[:name]) }
  return names_array
end

# puts get_names(potter)


# 2. Return an array with all the characters with more than 500 mentions. Each entry in the array should contain all information about that character. (ie `{:mentions=>18956, :name=>"Harry Potter", :house=>"Gryffindor"}`)

def mentions_500(potter)
  return potter.select { |elem| elem[:mentions].to_i > 500}
end

# puts mentions_500(potter)


# 3. Return an array with the names of all the houses. `["Gryffindor", "Slytherin", "Ravenclaw", "Hufflepuff"]`

def houses(potter)
  # houses_array = []
  # potter.each { |elem| houses_array << elem[:house] }
  # return houses_array.uniq.compact
  return potter.map { |elem| elem[:house] }.uniq.compact
end

# puts houses(potter)


# 4. Return an array with all the characters with one word names. Each entry in the array should contain all information about that character. (ie `{:mentions=>1797, :name=>"Voldemort", :house=>"Slytherin"}`)

def one_word_names(potter)
  return potter.select { |elem| elem[:name].split(' ').count == 1 }
end

# puts one_word_names(potter)


# 5. Return the number of characters from Hufflepuff (Hint: It should be 3)

def hufflepuff(potter)
  a = potter.select {|elem| elem[:house] == "Hufflepuff"}
  return a.count  
end

# puts hufflepuff(potter)


# 6. Return an array with all of the character names, but for the characters from Slytherin, reverse their names (ie "Draco Malfoy" becomes "yoflaM ocarD")

def rev_slyth potter
  names_array = []
  potter.each do |elem| 
    if elem[:house] == "Slytherin" 
      names_array << elem[:name].reverse
    else
      names_array << elem[:name]
    end
  end
  return names_array
end

# puts rev_slyth potter

# 7. Return an array with the unique last names of all the characters from Gryffindor (ie, print Weasley only 1 one time)

def unique_last potter
  a = potter.select {|elem| elem[:name] if elem[:house] == "Gryffindor" && elem[:name].split(' ').count == 2}
  return a.map {|e| e[:name].split(' ')[1]}.uniq
end

puts unique_last potter

# 8. Return an array with the names of all the Weasleys, but give each of them a middle name of "Badger"

def weasleys potter
  a = potter.select {|elem| elem[:name].split(' ')[1] == "Weasley" }
  return a.map {|elem| elem[:name].gsub(' ', ' Badger ')}
end

# puts weasleys potter

# 9. Return an array with the first names of characters whose first names end in "y"

def y_names potter
  a = potter.select {|elem| elem[:name].split(' ')[0][-1] == "y" }
  return a.map {|elem| elem[:name].split(' ')[0]}

end

# puts y_names potter




# BONUS 1. Return an array with all of the characters' names whose name contains "ll" somewhere

def ll_names potter
  a = potter.select {|elem| elem[:name].include? "ll" }
  return a.map {|elem| elem[:name]}
end

# puts ll_names potter

# BONUS 2. Return an array with all of the characters' names whose name contains multiple k's




# BONUS 3. Return an array with all of the characters whose first name begins with the same letter as their last name, sorted alphabetically (ie "Bathilda Bagshot". Note: "Nearly Headless Nick" counts here!)
