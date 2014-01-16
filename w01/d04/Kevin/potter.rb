f = File.open("potter.csv", "r")

# the_data = f.read
#  add_commas = the_data.gsub("\n", ",")
#  the_split = add_commas.split(",")
 
 the_data = f.read
 the_split = the_data.split("\n")
 new_array = the_split.map { | the_character | the_character.split(",") }


mention_array = new_array.map { | position | position[1] }

  # final_split = first_split.split("\n")

# def make_array(array)
#   first_split = array.split(",")
#   final_split = first_split.split("\n")
#   return final_split
# end


# puts make_array(the_data)
puts mention_array



f.close