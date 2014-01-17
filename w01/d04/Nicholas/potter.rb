f = File.new("potter.csv", "r")

potter = []

csv_info = f.read
names = csv_info.split("\n")
separate_info = []
names.each {|line| separate_info << line.split(",")}

#separate out the mentions, names, schools
separate_info.each do | line|
  a = {:mentions => line[0], :name => line[1], :school => line[2]}
  potter.push(a)
end

#storing just the names
def store_names(potter)
  store = []
  potter.each {|spot| store << spot[:name]}
  return store
end

#People that are mentioned more than 500 times
 greater_than_500 = separate_info.select do |contact|
   contact[0].to_i > 500
 end
 

f.close


