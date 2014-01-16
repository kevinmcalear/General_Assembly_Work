##Open File##
f = File.new("potter.csv", "r")

##Read File##
potter_file = f.read

##Split up File by Commas##
potter_array = potter_file.split("\n")

sub_array = potter_array.map{ |variable| variable.split(",") }

def print_names(array,position)
  i = 0
  until i == array.size
  puts array[i][position]
  i += 1
  end
end

puts print_names(sub_array, 1)


