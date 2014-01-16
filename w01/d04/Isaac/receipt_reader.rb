# read information from a receipt and print it out to the user

f = File.open("receipt.txt", "r")

string_version_of_receipt = f.read

puts string_version_of_receipt

f.close