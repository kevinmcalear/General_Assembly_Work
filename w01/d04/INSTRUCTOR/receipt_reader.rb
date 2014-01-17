# create a new stream to the file ./receipt.txt with the mode "r" (read from beginning)
f = File.open("receipt.txt", "r")

# load the whole contents of the file into memory as a single String
string_version_of_receipt = f.read

# break the string into an array at each new line
array_version_of_receipt = string_version_of_receipt.split("\n")

# create a new array from the old array with any lines that
# have money on them (gift receipt!)
array_version_of_receipt = array_version_of_receipt.reject do |line|
  line.include? "$"
end
# reject is the same as "select," but it only copies items
# for which the given block returns *false*

# combine the array into a string again, returning the newlines
string_version_of_receipt = array_version_of_receipt.join("\n")

# print to terminal
puts string_version_of_receipt

f.close