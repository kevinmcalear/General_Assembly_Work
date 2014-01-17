f = File.open("Your_Reicpt.txt", "r")
string_version_of_receipt = f.read

puts string_version_of_receipt

# f.each_line { | line | puts line.chomp }

f.close