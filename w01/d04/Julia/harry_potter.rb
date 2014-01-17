f = File.open("potter.csv", "r")

values = f.read
#values.each {|line| line.split(",")}
#puts values.class
values = values.gsub("\n", "~")
values = values.split("~")


values = values.map {|line| line.split(",")}

#return all names method
def all_names(values)
values.each do |name|
	puts name[1]
end
end

#all_names(values)

#return an arrayr with all the characthers with > 500
def greater_than_500_appearances(values) 
values.each do |appearances|
	if appearances[0].to_i > 500
		puts appearances[0]
	end
end
end

#greater_than_500_appearances(values)

#* Return an array with the names of all the houses.
# `["Gryffindor", "Slytherin", "Ravenclaw", "Hufflepuff"]`
#if house[2].to_s.length > 0

def unique_houses(values)
houses = values.map {|house| house[2]}
houses.compact!
puts houses.uniq
end

def one_word_names(values)
one_word_names = values.map {|names| names[1]}
puts one_word_names.delete_if{|names| names.include?" "}
puts one_word_names.class
end


=begin
values.each do |houses|
	if houses[2].to_s.length > 0
	houses_array = Array.new
	values.map {|house| houses_array << house[2]}
	puts houses_array
	end
end

#puts values[1]

#puts values[0][1]


=begin
i = 0
while i < values.size
	appearances_hash = {values[i][1].to_sym => values[i][0]}
	i += 1
end

puts appearances_hash[:"harry potter"]
#attempt to do it in hashes
#appearances_hash = {values[0][1].to_s => values[0][0]}
#puts new_hash_appearances
f.close




  # * films.map {|film| puts “Fav film: #{film}}
=begin

   * map {|obj| block} returns an array
   * Returns a new array with the result of running block once for every element
   * perform an action on each item in a collection, saving the result to a new collection
   * the item’s are “mapped” from one collection to another
   * films.map {|film| puts “Fav film: #{film}}
=end