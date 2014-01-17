# read information from a receipt and print it out to the user

f = File.open("receipt.txt", "r")

string_version_of_receipt = f.read

array = string_version_of_receipt.split("\n")

selector = array.select{|line| line.length>0}.select{ |line| line.include?("$")}

puts selector

f.close