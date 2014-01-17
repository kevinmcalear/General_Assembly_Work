f = File.new("reciept.txt", "r")

string_version_of_receipt = puts f.read

puts string_version_of_receipt

f.close
