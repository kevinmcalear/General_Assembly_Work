f = File.open("potter.csv", "r")

values = f.read

values = values.gsub("\n", "~")
values = values.split("~")


values = values.map {|line| line.split(",")}

#print values
#return all names method
def all_names(values)
  values.each do |name|
    puts name[1]
  end
end

all_names(values)

#return an array with all the characthers with > 500
def greater_than_500_appearances(values) 
  values.each do |appearances|
    if appearances[0].to_i > 500
      puts appearances[0]
    end
  end
end
greater_than_500_appearances(values)

#return an array with the names of all houses
def unique_houses(values)
  houses = values.map {|house| house[2]}
  houses.compact!
  puts houses.uniq
end
unique_houses(values)

#return an array  of all the characters with one word names
#each entry in the array should also contain all the infomation
#about that character
def one_word_names(values)
  one_word_names = values.map {|names| names}
  one_word_names.delete_if{|names| names[1].include?" "}
  one_word_names.each {|info| puts info.to_s}
end
one_word_names(values)

#return the number of characters from hufflepuff
def count_of_hufflepuff(values)
  count = 0
  values.each do |house| 
    if house[2] == "Hufflepuff"
      count += 1
    end
  end
  puts "There are #{count} Hufflepuffs!"
end
count_of_hufflepuff(values)

#print all character names
#reverse the names of characters in slytherin
def reversed_slytherin(values)
  slytherin_reverse = values.each do |info|
    if info[2] == "Slytherin"
      info[1] = info[1].reverse
    end
  end
  slytherin_reverse.each {|info| puts info[1]}
end
reversed_slytherin(values)


#unique last names
def unique_last_names(values)
  new_array = values.map do |entry| 
    entry[1].split.last
  end
    puts new_array.uniq.sort
end
unique_last_names(values)


#give each Weasley a middle name of badger
def weasley(values)
weasley = values.map do |entry|
  last_names_only = entry[1].split.last
  if last_names_only == "Weasley"
    first_names = entry[1].split.first
    last_names = entry[1].split.last
    puts "#{first_names.to_s} Badger #{last_names.to_s.chomp}"
  end
end
end

weasley(values)

def first_names_y(values)
first_names_y = values.map do |entry|
  first_names_only = entry[1].split.first
  last_letter = first_names_only[-1,1]
    if last_letter == "y"
      puts entry[1]
    end
end
end

first_names_y(values)
