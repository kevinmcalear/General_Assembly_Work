require 'csv'
csv = CSV.read('potter.csv', :headers => true, :header_converters => :symbol)


def print_names
print csv[:names]
end



def get_num_mentions(csv)
  i = 0
  names_over_500 = []
while i < csv[:mentions].count
    csv[:mentions][i].to_i
   if csv[:mentions][i].to_i >= 500
     names_over_500.push(csv[:names][i])
   end
  i+=1
end
print names_over_500
end

get_num_mentions(csv)

def print_houses(csv)
print csv[:houses].uniq.compact
  
end

print_houses(csv)

#print all the characters from hufflepuff

def huff_name(csv)
    i = 0
    huff_array = []
    while i < csv[:houses].count
      if csv[:houses][i] == "Hufflepuff"
        huff_array.push(csv[:names][i])
      end
       i += 1
    end
      print huff_array
  end

huff_name(csv)

# * Return an array with all of the character names, but for the characters from Slytherin, reverse their names (ie "Draco Malfoy" becomes "yoflaM ocarD")
def name_reverse_slyth(csv)
  i = 0
  names = []
  while i < csv[:names].count
    if csv[:houses][i] == "Slytherin"
      names.push(csv[:names][i].reverse)
    else
    names.push(csv[:names][i])
  end
    i += 1
  end
  print names
end

name_reverse_slyth(csv)

# * Return an array with the unique last names of all the characters from Gryffindor (ie, print Weasley only 1 one time)

# def last_name_gryff(csv)
#   i = 0
#   last_name = []
#   while i < csv[:houses].count
#     if csv[:houses][i] == "Gryffindor"

#        end
#     i += 1
#   end
#   print last_name
# end

# last_name_gryff(csv)



