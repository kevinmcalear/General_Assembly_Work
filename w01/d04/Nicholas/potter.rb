f = File.new("potter.csv", "r")

potter = []

csv_info = f.read
# Return an array with just the names of all characters
names = csv_info.split("\n")

# Separate the info of each person into an array
separate_info = []
names.each {|line| separate_info << line.split(",")}

# Return an array with all character info for characters mentioned 
# more than 500 times.
greater_than_500 = separate_info.select do |contact|
   contact[0].to_i > 500
end

# Separate out the mentions, names, schools into hashes
separate_info.each do | line|
  a = {:mentions => line[0], :name => line[1], :school => line[2]}
  potter.push(a)
end

# Storing just the names
def store_names(potter)
  store = []
  potter.each {|spot| store << spot[:name]}
  return store
end
 
# Storing just the school names and deleting duplicates and nil's
def school_names(potter)
  houses = []
  potter.each {|spot| houses << spot[:school]}
  return houses.uniq!.compact!
end

# Return an array with characters that have one word names
one_word = separate_info.delete_if {|x| x[1].include?(" ")}

# Return all character names but reverse Slytherin's names
def reverse_names(potter)
potter.each do |x| 
  if x[:school] == "Slytherin"
    print x[:name].reverse
  else
  print x[:name]
  end
end
end

#Return the count of how many characters are in Hufflepull
def huff_puff(potter)
  huffnames = []
  potter.each do |x|
    if x[:school] == "Hufflepuff"
      huffnames << x
    end
  end
  return huffnames.length
end

#Return the unique (nice hint) names of the gryffindor house
def gryff(potter)
  griffnames = []
potter.each do |x|
  if x[:school] == "Gryffindor"
  griffnames << x[:name].split(" ").last
  end
end
return griffnames.uniq!
end

def weasley(potter)
  weasley_list = potter.select {|x| x[:name].split.last == "Weasley"}
  weasley_badger = weasley_list.map do |weasley|
    weasley[:name].gsub(" ", " Badger ")
  end
  return weasley(potter)
end




f.close


