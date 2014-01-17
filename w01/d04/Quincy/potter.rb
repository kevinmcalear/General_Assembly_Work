# Open the file 

 f = File.open("potter.csv", "r")

# Figure out how to store the data

potter = []

f.each_line do |line|
  potter.push(line)
end

# Return an array with the names of the characters